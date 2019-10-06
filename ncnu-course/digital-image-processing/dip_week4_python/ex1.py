import numpy as np

filePath = "Lena512.raw"
imgHeight = 512 
imgWidth = 512

rawdata = np.fromfile(filePath,dtype=np.uint8)
print("Raw data: ", rawdata.shape)
imgRaw = rawdata.reshape([imgHeight,imgWidth])
print("Image Raw data: ", imgRaw.shape)
print('Input Image: ', filePath, ', with shape ', imgRaw.shape, ', with type: ', imgRaw.dtype)

import matplotlib.pyplot as plt
plt.imshow(imgRaw, cmap="gray")
plt.show()

newImgHeight = 1024
newImgWidth = 1024
imgScale = int(newImgHeight/imgHeight)

newImgRaw = np.zeros([newImgHeight,newImgWidth],dtype=np.uint8)
print("New Image size: ", newImgRaw.shape)

for i_new in range(0,newImgHeight,2):
    for j_new in range (0, newImgWidth,2):
        i = int(i_new/imgScale)
        j = int(j_new/imgScale)
        newImgRaw[i_new,j_new] = imgRaw[i,j]
        newImgRaw[i_new,j_new+1] = imgRaw[i,j]
        newImgRaw[i_new+1,j_new] = imgRaw[i,j]
        newImgRaw[i_new+1,j_new+1] = imgRaw[i,j]


fo = open('OutputRaw.raw','wb')
fo.write(newImgRaw)
fo.close()

plt.imshow(newImgRaw, cmap="gray")
plt.show()


