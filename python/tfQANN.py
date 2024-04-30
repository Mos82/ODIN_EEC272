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
  epochs=1,
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
    # Flatten the quantized weights
    flattened_weights = quantized_4bit_weights.flatten()
    unpacked_bitarray = np.unpackbits(flattened_weights.view(np.uint8))

    reshaped = unpacked_bitarray.reshape(-1, 4)
    selected_bits = reshaped[1::2].flatten()
    new_array = np.packbits(selected_bits[::1])
    test1 = new_array.reshape(-1,32)


    return test1

synapse_data_uint32 = package_synapse_data(convert_to_4bit(weights))

# Write the synapse data to a file
with open("synapse_data.txt", "w") as file:
    file.write("const uint32_t synapse_data[] = {\n")
    for i, entry in enumerate(synapse_data_uint32):
        file.write(f"0b{},\n".format(entry))
    file.write("};")

print("Synapse data written to synapse_data.txt")