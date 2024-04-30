import numpy as np

myval = [0x00000001, 0x0000000F]
#myval = np.binary_repr(myval, width=32)
myval = np.array(myval, dtype=np.uint8)
test = np.unpackbits(myval.view(np.uint8))
reshaped_test = test.reshape(-1, 4)
selected_bits = reshaped_test[1::2].flatten()
new = np.packbits(selected_bits[::1])

pass