x = True
y = False

print("x and y is ", x and y)
print("x or y is", x or y)
print("x nand y is ", not (x and y))
print("x nor is ", not (x or y))

import numpy as np
A = np.array([10, 9, 8, 10, 20])
print(A==10)

B = np.array([
[10, 9, 8, 1],
[11, 9, 2, 3]
])
print(B>=5)
