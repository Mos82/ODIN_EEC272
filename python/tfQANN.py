import tensorflow as tf
from tensorflow_model_optimization.python.core.keras.compat import keras

import tensorflow_model_optimization as tfmot

quantize_model = tfmot.quantization.keras.quantize_model

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
# from tensorflow.keras.optimizers import Adam
print(tf.__version__)
# Input shape
# Load MNIST dataset
mnist = tf.keras.datasets.mnist

(train_images, train_labels), (test_images, test_labels) = mnist.load_data()

train_images = train_images[..., tf.newaxis]
test_images = test_images[..., tf.newaxis]

#resize images to 16x16
print(train_images.shape)
print(test_images.shape)
# Resize the images in the datasets to 16x16

train_images = tf.image.resize(
    train_images,
    [16, 16]
)

test_images = tf.image.resize(
    test_images,
    [16, 16]
)
print(train_images.shape)
print(test_images.shape)


# Normalize the input image so that each pixel value is between 0 to 1.
train_images = train_images / 255.0
test_images = test_images / 255.0

# Define the model architecture.
model = keras.Sequential([
  keras.layers.InputLayer(input_shape=(16, 16, 1)),
  keras.layers.Flatten(),
  #keras.layers.Dense(256, activation='relu'),
  keras.layers.Dense(10, activation='relu')
])

# Train the digit classification model
model.compile(optimizer='adam',
              loss=keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])

model.fit(
  train_images,
  train_labels,
  epochs=10,
  validation_split=0.1,
)

# q_aware stands for for quantization aware.
q_aware_model = quantize_model(model)

# `quantize_model` requires a recompile.
q_aware_model.compile(optimizer='adam',
              loss=keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])

q_aware_model.summary()

train_images_subset = train_images[0:1000] # out of 60000
train_labels_subset = train_labels[0:1000]

q_aware_model.fit(train_images_subset, train_labels_subset,
                  batch_size=500, epochs=1, validation_split=0.1)

_, baseline_model_accuracy = model.evaluate(
    test_images, test_labels, verbose=0)

_, q_aware_model_accuracy = q_aware_model.evaluate(
   test_images, test_labels, verbose=0)

print('Baseline test accuracy:', baseline_model_accuracy)
print('Quant test accuracy:', q_aware_model_accuracy)



converter = tf.lite.TFLiteConverter.from_keras_model(q_aware_model)
converter.optimizations = [tf.lite.Optimize.DEFAULT]

quantized_tflite_model = converter.convert()


# Save the quantized TFLite model to a file
tflite_model_path = 'quantized_model.tflite'
with open('quant_file.tflite', 'wb') as f:
    f.write(quantized_tflite_model)

interpreter = tf.lite.Interpreter(model_path="quant_file.tflite")
interpreter.allocate_tensors()
# Get tensor details.
tensor_details = interpreter.get_tensor_details()

# Display tensor details to find weights.
for detail in tensor_details:
    print(detail)


def extract_quantized_weights(tensor_index):
    """ Extract quantized weights and their quantization parameters """
    tensor = interpreter.tensor(tensor_index)()  # Get the tensor for given index
    scale, zero_point = tensor_details[tensor_index]['quantization']

    print("Quantization Parameters - Scale:", scale, "Zero Point:", zero_point)
    return tensor, scale, zero_point


weights, scale, zero_point = extract_quantized_weights(5)
print("Quantized Weights:", weights)
print("Scale:", scale)

import numpy as np
def convert_to_4bit(weights):
    # Scale the weights from -128 to 127 range to -4 to 3 range
    scaled_weights = (weights + 128) / 32 - 4

    # Round the scaled weights to the nearest integer
    rounded_weights = np.round(scaled_weights)

    # Clip the rounded weights to the range of 0 to 7
    clipped_weights = np.clip(rounded_weights + 4, 0, 7)

    # Convert the clipped weights to 4-bit unsigned integers
    quantized_4bit_weights = clipped_weights.astype(np.uint8)

    return quantized_4bit_weights

print(convert_to_4bit(weights))
print("converted to 4 bit")


def package_synapse_data(quantized_4bit_weights):

    # myval = [0x00000001, 0x0000000F]
    # # myval = np.binary_repr(myval, width=32)
    # myval = np.array(myval, dtype=np.uint8)
    # test = np.unpackbits(myval.view(np.uint8))
    # reshaped_test = test.reshape(-1, 4)
    # selected_bits = reshaped_test[1::2].flatten()
    # new = np.packbits(selected_bits[::1])



    # Add 1 to the MSB of each 4-bit value
    quantized_4bit_weights |= 0b1000
    quantized_4bit_weights = np.array(quantized_4bit_weights, dtype=np.uint8)
    # # Flatten the quantized weights
    # flattened_weights = quantized_4bit_weights.flatten()
    # unpacked_bitarray = np.unpackbits(flattened_weights.view(np.uint8))
    #
    # reshaped = unpacked_bitarray.reshape(-1, 4)
    # selected_bits = reshaped[1::2].flatten()
    # new_array = np.packbits(selected_bits).view(np.uint32)
    # #test1 = new_array.reshape(-1,32)

    m16bundle = quantized_4bit_weights.reshape(-1, 8)

    m16bundle2 = m16bundle[:, ::-1]

    test = np.unpackbits(m16bundle2.view(np.uint8))
    reshaped_test = test.reshape(-1, 4)
    selected_bits = reshaped_test[1::2].flatten()
    m16reshaped_test = selected_bits.reshape(-1, 32)

    # holy cow. you NEED byteswap here due to the endianess of your system (big). unless it's little. Then remove it. Otherwise it really screws up. In the future just use unit8 like the method wants. NO endianess issues.
    new_old = np.packbits(m16reshaped_test, bitorder='big').view(np.uint32).byteswap()
    new2 = np.packbits(m16reshaped_test, bitorder='big').view(np.uint8)

    neuron_data = new2.reshape(32, 40)
    final_data = np.zeros((256, 32), dtype=np.uint8)

    for i in range(256):
        # Calculate the row indices for the current neuron
        row_indices = i % 32

        # Calculate the column indices for the current neuron
        column_indices = (i // 32) * 32

        # Assign the corresponding bytes from the reshaped input data to the current neuron
        final_data[i] = neuron_data[row_indices, column_indices:column_indices + 32]

        # Flatten the packaged data to a 1D array
    new = final_data.flatten()

    return new

def package_synapse_data2(quantized_4bit_weights):
    quantized_4bit_weights |= 0b1000
    new = quantized_4bit_weights
    empty = np.zeros((8192,8), dtype=np.uint8)
    for i in range(256):
        empty[i*32][7] = new[0][i]
        empty[i*32][6] = new[1][i]
        empty[i*32][5] = new[2][i]
        empty[i*32][4] = new[3][i]
        empty[i*32][3] = new[4][i]
        empty[i*32][2] = new[5][i]
        empty[i*32][1] = new[6][i]
        empty[i*32][0] = new[7][i]
        empty[(i*32)+1][7] = new[8][i]
        empty[(i*32)+1][6] = new[9][i]
    x =np.unpackbits(empty.view(np.uint8))
    m16reshaped_test = x.reshape(-1, 4)
    selected_bits = m16reshaped_test[1::2]
    new = np.packbits(selected_bits, bitorder='big').view(np.uint32).byteswap()
    new = new.reshape(8192)
    return new





synapse_data_uint32 = package_synapse_data2(convert_to_4bit(weights))

# Write the synapse data to a file
with open("synapse_data2.txt", "w") as file:
    file.write("const uint32_t synapse_data[] = {\n")
    for i, entry in enumerate(synapse_data_uint32):
        # conver to binary string
        file.write("0b{0:032b},\n".format(entry))
    for i in range(8192-319):
        file.write("0b{0:032b},\n".format(0))
    file.write("0b{0:032b}\n".format(0))
    file.write("};")

# Write the synapse data to a file
with open("Syn_Mem_Trained2.txt", "w") as file:
    #file.write("const uint32_t synapse_data[] = {\n")
    for i, entry in enumerate(synapse_data_uint32):
        # conver to binary string
        file.write("{0:032b}\n".format(entry))
    for i in range(8192 - 320):
        file.write("{0:032b}\n".format(0))
#    file.write("{0:032b}\n".format(0))
    #file.write("};")

print("Synapse data written to synapse_data.txt")

import numpy as np

import tensorflow as tf
def save_AER_code(image, inferred_label, true_label, image_number):
    """Save the AER code to a file."""
    # Flatten the image (row-major order, 'C') and create pixel indices array
    flattened_image = image.numpy().flatten(order='C')
    pixel_indices = np.arange(flattened_image.shape[0])

    # Sort the pixel intensities in descending order, and get the corresponding indices
    sorted_indices = np.argsort(flattened_image)[::-1]

    # Write binary sorted indices to file
    filename = f"AER_CODE_I{inferred_label}_A{true_label}_overall{image_number}.txt"
    with open(filename, 'w') as file:
        for index in sorted_indices:
            file.write(f"{index:08b}\n")
    print(f"AER file written: {filename}")


# Infer and save AER codes for 10 different images from the test set
predictions = q_aware_model.predict(test_images[:10])

for i, (image, label) in enumerate(zip(test_images[:10], test_labels[:10])):
    inferred_label = np.argmax(predictions[i])
    save_AER_code(image, inferred_label, label, i + 1)


    def save_AER_code_c(image, inferred_label, true_label, image_number, all_codes):
        """Store each image's AER code as an 8-bit integer array."""
        flattened_image = image.numpy().flatten(order='C')
        pixel_indices = np.arange(flattened_image.shape[0])

        sorted_indices = np.argsort(flattened_image)[::-1]

        binary_indices = [(index & 0xFF) for index in sorted_indices]
        all_codes.append(binary_indices)

        print(f"AER data prepared for image: {image_number}")


    # Generate AER data for the first 10 images in the test set
    predictions = q_aware_model.predict(test_images[:10])

    all_codes = []
    for i, (image, label) in enumerate(zip(test_images[:10], test_labels[:10])):
        inferred_label = np.argmax(predictions[i])
        save_AER_code_c(image, inferred_label, label, i + 1, all_codes)

    # Write to C source file
    filename = "aer_data.c"
    with open(filename, 'w') as file:
        file.write("const uint8_t aer_data[10][{}] = {{\n".format(len(all_codes[0])))
        for code in all_codes:
            file.write("    {" + ', '.join([f"0x{val:02X}" for val in code]) + "},\n")
        file.write("};\n")

    print(f"C source file written: {filename}")



def save_AER_code_c(image, inferred_label, true_label, image_number, all_codes, labels_info):
    """Store each image's AER code as an array of 256 8-bit integers and record its labels."""
    # Flatten the image and create an array of pixel indices
    flattened_image = image.numpy().flatten(order='C')
    num_pixels = min(256, flattened_image.shape[0])

    # Sort pixel indices based on intensity in descending order
    sorted_indices = np.argsort(flattened_image)[::-1][:num_pixels]

    # Create an 8-bit array and pad with zeros if necessary
    binary_indices = [(index & 0xFF) for index in sorted_indices]
    binary_indices.extend([0] * (256 - len(binary_indices)))

    all_codes.append(binary_indices)
    labels_info.append((inferred_label, true_label))

    print(f"AER data prepared for image: {image_number}")

# Predict using the model and store the AER codes and labels for the first 10 images
predictions = q_aware_model.predict(test_images[:10])

all_codes = []
labels_info = []
for i, (image, label) in enumerate(zip(test_images[:10], test_labels[:10])):
    inferred_label = np.argmax(predictions[i])
    save_AER_code_c(image, inferred_label, label, i + 1, all_codes, labels_info)

# Write to C source file
c_filename = "aer_data.c"
with open(c_filename, 'w') as c_file:
    c_file.write("#include <stdint.h>\n\n")
    c_file.write("const uint8_t aer_data[10][256] = {\n")
    for code in all_codes:
        c_file.write("    {" + ', '.join([f"0x{val:02X}" for val in code]) + "},\n")
    c_file.write("};\n")
print(f"C source file written: {c_filename}")

# Write inferred and actual labels to a separate text file
labels_filename = "aer_labels.txt"
with open(labels_filename, 'w') as labels_file:
    labels_file.write("Inferred Label, Actual Label\n")
    for inferred, actual in labels_info:
        labels_file.write(f"{inferred}, {actual}\n")
print(f"Labels file written: {labels_filename}")