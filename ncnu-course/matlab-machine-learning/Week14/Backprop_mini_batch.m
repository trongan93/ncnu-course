function [W1,W2] = Backprop_mini_batch(W1,W2,X,D)
    %BACKPROP_MINI_BATCH Summary of this function goes here
    %   Detailed explanation goes here
    alpha = .9;
    dW1sum = 0;
    dW2sum = 0;
    M = 2; %size of a partition
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
        dw1sum = dW1sum + dW1;

        
        dW2 = alpha*delta*y1';
        dW2sum = dW2sum + dW2;
        
        if mod(k,M) == 0
            W1 = W1 + dW1sum/N;
            W2 = W2 + dW2sum/N;
            dW1sum = 0;
            dW2sum = 0;
        end

    end
end

