X = [0 0 1; 0 1 1; 1 0 1; 1 1 1];
D = [0 0 1 1]';
     
W1 = 2*rand(4, 3) - 1;
W2 = 2*rand(1,4) - 1;

for epoch = 1:1000        % train
  [W1 W2] = Backprop_SGD(W1,W2,X,D);    
end

N = 4;                        % inference
Y = zeros(size(D));

for k = 1:N
  x = X(k, :)';
  v1 = W1*x;
  y1 = Sigmoid(v1);
  
  v = W2 * y1;
  y = Sigmoid(v)
  Y(k) = y;
end
[Y D]