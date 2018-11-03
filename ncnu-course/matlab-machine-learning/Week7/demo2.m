
f0 = 300;
A = 5;
theta = 0.25*pi;
fs = 5000
t = -0.005:1/fs:0.005;
x = A*sinc(2*pi*f0*t+theta);
figure(1), plot(t,x); 
hold on
stem(t,x)
hold off

X = fft(x)
figure(2), plot(X);
hold on
figure(2), plot(abs(X));