function [W1,W2] = Backprop_1h(W1,W2,X,D)
%BACKPROP_1H Summary of this function goes here
%   Detailed explanation goes here
    alpha = .9;
    N = size(X,1);
    for k = 1:N
        x = X(k, :)';
        d = D(k);
        
        v1 = W1*x;
        y1 = Sigmoid(v1);
        v = W2*y1;
        y = Sigmoid(v);
        
        e = d - y;
        delta = y.*(1-y).*e;
        
        e1 = W2'*delta;
        delta1 = y1.*(1-y1).*e1;
        
        dW1 = alpha*delta1*x';
        W1 = W1 +dW1;
        
        dW2 = alpha*delta*y1';
        W2 = W2 + dW2;
    end
end

