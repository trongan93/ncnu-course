x = 0:0.1:6;
y = 5*cos(2*pi*x/3);
plot(x,y,'r');
x = -pi:0.1:pi;
y = 10*exp(j*x);
plot(real(y),imag(y));
% plot(real(x),real(y));
plot(x,imag(y));
x = -2*pi : 0.1 : 2*pi;
y = log(5*exp(j*2*x));
plot(x,real(y))
plot(x,imag(y))
% ------
x = [-0.8,2,10];
exp(j*x) == cos(x) + j * sin(x);
(x+1).^3 == x.^3 + 3*x.^2 + 3*x + 1
(x+1).^3 - (x.^3 + 3*x.^2 + 3*x + 1)
cosh(x) == (exp(x)+exp(-x))/2
norm(cosh(x) - ((exp(x)+exp(-x))/2))


% Part 2

rs = helloworld(4)
