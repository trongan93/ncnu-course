x = [1 2 4 7]';
y = [3 5 7 6]';
A = [x.^2 x.^1 x.^0]
A = [x.^2 x ones(size(x))]

b = A\y
figure(1), plot(x,y, 'go', x, A*b, 'r')
norm(y-A*b)^2

A2 = [x.^3 x.^2 x x.^0]
b2 = A2\y
figure(2), plot(x,y, 'go', x, A*b, 'r')