x = -1:0.05:1;
x = x';
y = 1./(1+exp(-3*x));
figure(1), stem(x,y);

%% Case 1
% A = [x.^2 x x.^0 one(size(x))];
A = [x.^2 x ones(size(x))];
a = A\y;

figure(2), plot(x,y, 'go', x, A*a, 'r')

