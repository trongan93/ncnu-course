import cv2
import numpy as np
from matplotlib import pyplot as plt

origin_img = cv2.imread('satellite.jpg')
img = cv2.cvtColor(origin_img, cv2.COLOR_BGR2GRAY)
# edges = cv2.Canny(img,100,200)
edges = cv2.Canny(img,200,250)

plt.subplot(121),plt.imshow(cv2.cvtColor(origin_img, cv2.COLOR_BGR2RGB))
plt.title('Original Image'), plt.xticks([]), plt.yticks([])
plt.subplot(122),plt.imshow(edges,cmap = 'gray')
plt.title('Edge Image'), plt.xticks([]), plt.yticks([])

plt.show()