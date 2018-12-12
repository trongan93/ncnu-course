function [W1, W2 ,W3] = Backprop_2h(W1, W2, W3, X, D)
%BACKPROP_2H Summary of this function goes here
%   Detailed explanation goes here
    alpha = .9;
    N = size(X,1);  
    for k = 1:N
        x = X(k, :)';
        d = D(k);
        
        % To calculate y and v
        v1 = W1 * x;
        y1 = Sigmoid(v1);
        
        v2 = W2 * y1;
        y2 = Sigmoid(v2);
        
        v = W3 * y2;
        y = Sigmoid(v);
        
        % To calculate e and delta
        e = d - y;
        delta = y.*(1-y).*e;
        
        e1 = W3'*delta;
        delta1 = y2.*(1-y2).*e1;
        
        e2 = W2'*delta1;
        delta2 = y1.*(1-y1).*e2;
        
        
        % To calculate the dW and W
        dW1 = alpha*delta2*x';
        W1 = W1 +dW1;
        
        dW2 = alpha*delta1*y1';
        W2 = W2 + dW2;
        
        dW3 = alpha*delta*y2';
        W3 = W3 + dW3;
    end
end
