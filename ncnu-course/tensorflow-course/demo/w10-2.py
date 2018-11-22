# Neural Network Example
# Course: Programming and Implementations of Deep Learning and Pattern Recognition with Tensorflow
# Example Implementation: Video Processing and Application Lab, National Chi Nan University
# Contact: Room 116, Building 3, Science and Technology College

# Basic Algorithm
# yi refers to each element in y the logits vector.
logits = [2.0, 1.0, 0.1]
print(logits)
import numpy as np
exps = [np.exp(i) for i in logits]

# We compute the sum of all the transformed logits and store the sum
sum_of_exps = sum(exps)

# Now we are ready to write the final part of our softmax function: 
# each transformed logits need to be normalized
softmax = [j/sum_of_exps for j in exps]

#  List comprehension gives us a list back.
print(softmax)
print(sum(softmax))