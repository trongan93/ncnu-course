clear

N = 1000;
X = 2*(rand(N, 3)-0.5);
D = 1*([exp(X(:,1))+ 2*exp(X(:,2))+ X(:,3)]>3);

W1 = 2*rand(3, 3) - 1; % First hidden layer is 3
W2 = 2*rand(5, 3) - 1; % Second hidden layer is 5
W3 = 2*rand(1, 5) - 1; % Output layer

E=[];
P=[];
for epoch = 1:1000          % train
    [W1 W2 W3] = Backprop_2h(W1, W2, W3, X, D);
    
    V1 = W1*X';
    Y1 = Sigmoid(V1);
    V2 = W2*Y1;
    Y2 = Sigmoid(V2);
    V = W3*Y2;
    Y = Sigmoid(V);
    E =[E norm(Y-D')^2];
    P = [P sum((Y>0.5)~=D')];
end
figure(1), plot(E);
figure(2), plot(P);
% N = 4; % inference
% Y = zeros(size(D));
% for k = 1:N
% x = X(k, :)';
% v2 = W1*x
% y2 = Sigmoid(v2)
% v1 = W2*y2
% y1 = Sigmoid(v1)
% v = W3*y1
% y = Sigmoid(v)
% Y(k) = y
% end
% [Y D]
