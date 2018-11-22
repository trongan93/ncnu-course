x = -1:0.05:1;
x = x';
y = 1./(1+exp(-3*x));

A = [x.^2 x ones(size(x))];
a = A\y;
figure(1), plot(x,y, 'go', x, A*a, 'r')
norm((y - A*a).^2)

A2 = [tan(x) x ones(size(x))];
a2 = A2\y;
figure(2), plot(x,y, 'go', x, A2*a2, 'r')
norm((y - A*a).^2)

A3 = [x ones(size(x))];
a3 = A3\y;
figure(3), plot(x,y, 'go', x, A3*a3, 'r')
norm((y - A*a).^2)
    