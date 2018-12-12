clear
           
N = 1000;
X = 2*(rand(N, 3)-0.5);
D = 1*([exp(X(:,1)) + 2*exp(X(:,2)) + X(:,3)]>3);
      
W1 = 2*rand(7, 3) - 1;
W2 = 2*rand(1, 7) - 1;

E = [];
P = [];
for epoch = 1:100           % train
    [W1 W2] = Backprop_1h(W1, W2, X, D);
    V1 = W1*X';
    Y1 = Sigmoid(V1);
    V = W2*Y1;
    Y = Sigmoid(V);
    E =[E norm(Y-D')^2];
    P = [P sum((Y>0.5)~=D')]; 
end
figure(1), plot(E);
figure(2),plot(P);


% clear
% N = 1000;
% X = 2*(rand(N, 2)-0.5);
% D = 1*(X *[1 2]'>0);
% 
% Z = X(:,1)+j*X(:,2);
% X = [abs(Z) angle(Z)];
% 
% W1 = 2*rand(1000,2) - 1;
% W2 = 2*rand(1,1000) - 1;
% 
% for epoch = 1:10000 %train
%     [W1, W2] = Backprop_1h(W1,W2,X,D);
% end
% 
% N = 3;
% Y = zeros(size(D));
% for k = 1:N
%     x = X(k,:)'
%     v1 = W1 * x
%     y1 = Sigmoid(v1)
%     v = W2*y1
%     y = Sigmoid(v)
%     Y(k) = y
% end
% [Y,D]