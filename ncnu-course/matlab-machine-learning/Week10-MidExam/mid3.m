% Part 1
x = 1:0.1:10;
y = x.^8 .* exp(-2.*x);
X = [x.^2 x ones(size(x))];
abc = X\y;
E = sum((y - (X*abc)).^2);
figure(1), plot(x,y, 'go', x, X*abc, 'r');

% Part 2
n = 1;
p=polyfit(x,y,n);
new_y=polyval(p,x); 
E1=norm(y-new_y)^2;
figure(2),plot(x,y,'r',x,new_y,'b');

% Part 3
p3 = polyfit(x.^2, log(y), 2);
f3 = polyval(p3,x);
E2=norm(y-f3)^2;
figure(3), plot(x,y,'g', x,exp(f3), '-');