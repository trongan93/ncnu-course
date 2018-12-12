N = 100;
X = 2*(rand(N, 3)-0.5);
% D = 1*(X.^2*[1 1 1]'>1);
D = 1*(X *[2 -3 5]'>0);

% X = [0 0 1; 0 1 1; 1 0 1; 1 1 1];
% D = [0 0 1 1]';
     
W = 2*rand(1, 3) - 1;
E = [];
P = [];
for epoch = 1:10000         % train
  W = DeltaSGD(W, X, D);
  V = W*X'; 
  Y = Sigmoid(V);
  E = [E norm(Y-D')^2];
  P = [P sum((Y>0.5)~=D')];      
end
figure(1), plot(E);
figure(2), plot(P);
% N = 4;                        % inference
% Y =[];
% for k = 1:N
%   x = X(k, :)';
%   v = W*x;
%   y = Sigmoid(v)
%   Y = [Y; y];
% end
% [Y D]