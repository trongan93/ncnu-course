%%1.1
x = [ones(1,10) 2*ones(1,20) 3*ones(1,15) 4*ones(1,10)];
figure(1), plot(x);
y1 = mean(x), y2 = mode(x), y3 = median(x), y4 = var(x), y5 = std(x);

%%1.2
A = magic(10)+10*randn(10,10);
y1 = mean(A), y2 = mode(A), y3 = median(A), y4 = var(A), y5 = std(A);