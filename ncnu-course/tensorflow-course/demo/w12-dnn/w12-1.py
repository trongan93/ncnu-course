import cv2
import numpy as np
import matplotlib.pyplot


img = cv2.imread('puppy.png',0)
edges = cv2.Canny(img,100,200)

# plt.subplot(1,2,1),
# plt.imshow(img,cmap = 'gray')
matplotlib.pyplot.imshow(img, cmap = matplotlib.cm.Greys_r)
# plt.imshow(edges,cmap = 'gray')
matplotlib.pyplot.imshow(img, cmap = matplotlib.cm.Greys_r)
# plt.title('Original Image'), 
# plt.xticks([]), plt.yticks([])
# plt.subplot(1,2,2),plt.imshow(edges,cmap = 'gray')
# plt.title('Edge Image'), plt.xticks([]), plt.yticks([])

matplotlib.pyplot.show()