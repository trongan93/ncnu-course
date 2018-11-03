fs = 16000;
t = -0.005:1/fs:0.005;
x = 5*cos(2*pi*300*t + 0.25*pi);
figure(1),stem(t,x)
figure(1),plot(t,x)
figure(1),plot(t,x,'.')
