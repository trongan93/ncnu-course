import numpy as np
def SVM_Loss(x,y,W):
    score = W.dot(x)
    margins = np.maximum(0, score - score[y] + 1)
    margins[y] = 0
    loss_i = np.sum(margins)
    return loss_i

W = np.array([[3.2, 1.3, 2.2], [5.1, 4.9, 2.5], [-1.7, 2.0, -3.1]])
x = [0, 1, 2]
y = [0, 1, 2]

# case 1
loss1 = SVM_Loss(x[0],y[0],W)
print(loss1)

# case 2
loss2 = SVM_Loss(x[1],y[1],W)

# case 3
loss3 = SVM_Loss(x[2],y[2],W)