import tempfile

import tensorflow as tf

from tensorflow_model_optimization.python.core.keras.compat import keras

import numpy as np
import cv2

# Load MNIST dataset
mnist = tf.keras.datasets.mnist
(train_images, train_labels), (test_images, test_labels) = mnist.load_data()

import tensorflow_model_optimization as tfmot

# Define the quantization configuration for 4 bits
def apply_quantization_to_dense(layer):
    if isinstance(layer, tf.keras.layers.Dense):
        return tfmot.quantization.keras.quantize_annotate_layer(
            layer,
            quantize_config=tfmot.quantization.keras.QuantizeConfig(
                quantizers=[
                    tfmot.quantization.keras.quantizers.LastValueQuantizer(
                        num_bits=4, per_axis=False, symmetric=False, narrow_range=False
                    )
                ]
            )
        )
    return layer



# Preprocess the images
import cv2
import numpy as np


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
import matplotlib.pyplot as plt
# Select a random image index
image_index = np.random.randint(len(train_images))

# Get the original and preprocessed images
original_image = train_images[image_index]
preprocessed_image = preprocess_images([original_image])[0]

# Plot the original and preprocessed images side by side
fig, axes = plt.subplots(1, 2, figsize=(8, 4))

axes[0].imshow(original_image, cmap='gray')
axes[0].set_title('Original Image')
axes[0].axis('off')

axes[1].imshow(preprocessed_image, cmap='gray')
axes[1].set_title('Preprocessed Image')
axes[1].axis('off')

plt.tight_layout()
plt.show()

train_images = preprocess_images(train_images)
test_images = preprocess_images(test_images)


# Normalize the input image so that each pixel value is between 0 to 1.
train_images = train_images / 255.0
test_images = test_images / 255.0

# Define the model architecture.
model = keras.Sequential([
  keras.layers.InputLayer(input_shape=(16, 16)),
  keras.layers.Reshape(target_shape=(16, 16, 1)),
  keras.layers.Flatten(),
 #keras.layers.Dense(256),
 # keras.layers.Conv2D(filters=12, kernel_size=(3, 3), activation='relu'),
 # keras.layers.MaxPooling2D(pool_size=(2, 2)),
 # keras.layers.Flatten(),
  keras.layers.Dense(10)
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

# Apply quantization to the model
annotated_model = tf.keras.models.clone_model(
    model,
    clone_function=apply_quantization_to_dense
)


import tensorflow_model_optimization as tfmot

quantize_model = tfmot.quantization.keras.quantize_model

#q_aware_model = tfmot.quantization.keras.quantize_model(model, quantize_config=quantize_config)

#q_aware_model = tfmot.quantization.keras.quantize_apply(annotated_model)

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

_, quant_file = tempfile.mkstemp('.tflite')

print('Temporary tflite model file:', quant_file)
with open('quant_file.tflite', 'wb') as f:
  f.write(quantized_tflite_model)