% Part 1 - Problem 1
A_1D = 1:(9*9);
A = reshape(A_1D,[9,9])
% Part 1--pb1-a
a = A > 35
% Part 1--pb1-b
b_check = mod(A,2)
b_withZero = b_check .* A
b_withZero(b_withZero==0)=[]
b = b_withZero
% Part 1--pb1-c
c_check = (mod(A,5)==3)
c_withZero = c_check .* A
c_withZero(c_withZero==0)=[]
c = c_withZero

% Part 1 - Problem 2
A = randn(40,20)
% Part 1--pb2-a
x = (A < 0).*A
x(x==0)=[]
% Part 1--pb2-b
numOfx = size(x)
numOfA = size(A)
proportionx = (numOfx(1) * numOfx(2))/ (numOfA(1)*numOfA(2))
% Part 1--pb2-c
averagex = mean(mean(x))
variancex = var(x)


