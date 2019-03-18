import numpy as np
import cv2
import pylab as plt

# Load an color image in grayscale
oriimg = cv2.imread('/home/trongan93/Projects/NCNU-Course/ncnu-course/ncnu-course/video-coding/data/LaPintada_Mexico2013Cause_rainfall.jpg')
plt.imshow(oriimg)
plt.title("Original image")
plt.show()
W = 1000.
height, width, depth = oriimg.shape
imgScale = W/width
newX,newY = oriimg.shape[1]*imgScale, oriimg.shape[0]*imgScale
newimg = cv2.resize(oriimg,(int(newX),int(newY)))
plt.imshow(newimg)
plt.title("Resied image")
plt.show()
# Resample

print("Finish")