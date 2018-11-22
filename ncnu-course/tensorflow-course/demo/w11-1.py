from scipy import misc
dog = misc.imread('w11-data/puppy.png')
red_dog = dog[:,:,0]
green_dog = dog[:,:,1]
blue_dog = dog[:,:,2]
print(blue_dog)
import matplotlib.pyplot
matplotlib.pyplot.imshow(red_dog, cmap = matplotlib.cm.Greys_r)
matplotlib.pyplot.show()