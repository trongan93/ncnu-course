function [W1,W2] = Backprop_SGD(W1,W2,X,D,lossType)
    % BACKPROP_SGN Summary of this function goes here
    % Detailed explanation goes here
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
        
        if(lossType == 0)
            % basic
            delta = y.*(1-y).*e;
        elseif (lossType == 1)
            % square_error
            delta = e.*(y.*(1-y));
        elseif (lossType == 2)
            %cross_entropy
            delta = e;
        else
            % basic
            delta = y.*(1-y).*e;
        end
        
        e1 = W2'*delta;
        delta1 = y1.*(1-y1).*e1;
        
        dW1 = alpha*delta1*x';
        W1 = W1 +dW1;
        
        dW2 = alpha*delta*y1';
        W2 = W2 + dW2;
    end
end

