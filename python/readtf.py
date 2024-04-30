import tensorflow as tf
import numpy as np
import cv2

# Load the TFLite model and allocate tensors.
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

# Suppose index 10 is the index of the quantized weights tensor you are interested in
print("test")
weights, scale, zero_point = extract_quantized_weights(5)
print("Quantized Weights:", weights)
print("Scale:", scale)




def preprocess_images(images):
    processed_images = []
    for image in images:
        # Resize the image to 16x16
        resized = cv2.resize(image, (16, 16), interpolation=cv2.INTER_AREA)

        # Deskew the image
        moments = cv2.moments(resized)
        skew = moments['mu11'] / moments['mu02']
        M = np.float32([[1, skew, -0.5 * 16 * skew], [0, 1, 0]])
        deskewed = cv2.warpAffine(resized, M, (16, 16), flags=cv2.WARP_INVERSE_MAP | cv2.INTER_LINEAR)

        # Soft thresholding using a sigmoid function
        # Set the threshold and scale for the sigmoid function
        threshold = 127
        scale = 0.1  # This controls the steepness of the sigmoid curve (smaller values make it steeper)

        # Apply the sigmoid function
        deskewed = deskewed.astype(np.float32)  # Convert to float32 for calculations
        soft_thresholded = 1 / (1 + np.exp(-scale * (deskewed - threshold)))

        # Scale the result back to the 0-255 range
        soft_thresholded = (soft_thresholded * 255).astype(np.uint8)

        processed_images.append(soft_thresholded)
    return np.array(processed_images)



import numpy as np

# Example 16x16 grayscale image
mnist = tf.keras.datasets.mnist
(train_images, train_labels), (test_images, test_labels) = mnist.load_data()

images = preprocess_images(test_images[0:2])
image = images[1]

import matplotlib.pyplot as plt
# Select a random image index
image_index = np.random.randint(len(train_images))

# Get the original and preprocessed images
original_image = test_images[1]
preprocessed_image = image

# Plot the original and preprocessed images side by side
fig, axes = plt.subplots(1, 2, figsize=(8, 4))

axes[0].imshow(original_image, cmap='gray')
axes[0].set_title('Original Image')
axes[0].axis('off')

axes[1].imshow(preprocessed_image, cmap='gray')
axes[1].set_title('Preprocessed Image')
axes[1].axis('off')

plt.tight_layout()
#plt.show()

# Flatten the image in the same way as TensorFlow's `.flatten()` method
flattened_image = image.flatten(order='C')

# Create an array of pixel indices
pixel_indices = np.arange(flattened_image.shape[0])

# Sort the pixel intensities in descending order and get the corresponding indices
sorted_indices = np.argsort(flattened_image)[::-1]

# Create a list to store the rank order spike code
rank_order_code = []

# Generate the rank order spike code
for i in range(len(sorted_indices)):
    pixel_index = pixel_indices[sorted_indices[i]]
    timestamp = i  # Assign timestamps based on the position in the sorted sequence
    rank_order_code.append((pixel_index, timestamp))

print(sorted_indices)