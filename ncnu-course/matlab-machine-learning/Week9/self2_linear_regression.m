clear
% y = ax^2 + bx + c
x = -0.5:0.1:0.5;
figure(1), plot(x);
% A = [x.^2 x ones(size(x))];
% a = A\y;
% 
% figure(2), plot(x,y, 'go', x, A*a, 'r')