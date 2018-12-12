import numpy as np

inputSize = 16
input = np.random.randint(255, size = (inputSize,inputSize))
print(input,'\n')

blockIndex = 0
blockSize = 4
listOfblock = list()

# Reshape input to blocks
for block_i in range(0, inputSize, blockSize):
    for block_j in range(0,inputSize, blockSize):
        block = input[block_i:block_i+blockSize,block_j:block_j+blockSize]
        listOfblock.append(block)
blocks = np.asarray(listOfblock)
print(blocks)

# Find the max for each block
listOfMax = list()
for block in blocks:
    maxValue = np.max(block)
    listOfMax.append(maxValue)
maxPoolValues = np.asarray(listOfMax)
print(maxPoolValues)

# Todo the Max Pooling Layer
maxPoolLayer = np.reshape(maxPoolValues,[int(inputSize/blockSize),int(inputSize/blockSize)])
print(maxPoolLayer)