import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
import torch.quantization

# Define the ANN architecture
class QuantizedANN(nn.Module):
    def __init__(self):
        super(QuantizedANN, self).__init__()
        self.fc1 = nn.Linear(256, 256)  # Fully connected layer
        self.fc2 = nn.Linear(256, 10)   # Output layer

    def forward(self, x):
        x = F.relu(self.fc1(x))  # ReLU activation to mimic spiking behavior
        x = self.fc2(x)
        return x

# Function to apply quantization
def prepare_quantization(model):
    model.qconfig = torch.quantization.get_default_qconfig('fbgemm')
    torch.quantization.prepare(model, inplace=True)

# Function to convert the model to use quantized weights
def convert_quantization(model):
    torch.quantization.convert(model, inplace=True)

# Create the model and apply quantization
model = QuantizedANN()
prepare_quantization(model)

# Generate synthetic data and labels for training
def generate_synthetic_data(num_samples):
    images = torch.randn(num_samples, 256)  # Random grayscale images
    labels = torch.randint(0, 10, (num_samples,))  # Random labels for 10 classes
    return images, labels

# Training settings
optimizer = optim.SGD(model.parameters(), lr=0.01)
criterion = nn.CrossEntropyLoss()
num_epochs = 5
batch_size = 32

# Training loop
for epoch in range(num_epochs):
    model.train()
    images, labels = generate_synthetic_data(1000)  # Generate 1000 samples
    for i in range(0, 1000, batch_size):
        inputs = images[i:i+batch_size]
        targets = labels[i:i+batch_size]

        optimizer.zero_grad()
        outputs = model(inputs)
        loss = criterion(outputs, targets)
        loss.backward()
        optimizer.step()

    print(f'Epoch {epoch+1}, Loss: {loss.item()}')

# Convert the model to use quantized weights after training
convert_quantization(model)

# Test the quantized model with example input
example_input = torch.randn(1, 256)
output = model(example_input)
print("Output with quantized model: ", output)

# Check model details to verify quantization
print(model)
