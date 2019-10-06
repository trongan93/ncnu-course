# dip week2
# Created by Trong-An Bui on 2019/9/22.
# Copyright © 2019 Trong-An Bui. All rights reserved.

import cv2
import pylab as plt
import numpy as np
url = "/Users/trongan93/Project/NCNU-Courses/ncnu-course/digital-image-processing/dip_week2_python/"
fileName = "026.jpg"
numOfChannel = 1
imgWidth = 512
imgHeight = 512

fullpathfilename = url + "Input/" + fileName
print(fullpathfilename)

img = cv2.imread(fullpathfilename)

plt.imshow(img)
plt.show()

cv2.imwrite(url + "Output/new_" + fileName,img)
print("Done to write Output")


