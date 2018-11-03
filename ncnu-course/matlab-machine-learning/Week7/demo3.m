fs = 5000;
t = -0.005:1/fs:0.005;
x = 5* cos(2*pi*300*t+0.25*pi);
X = fft(x)
figure(1),plot(X)
figure(1),subplot(2,1,1),plot(abs(X))
figure(1),subplot(2,1,2),plot(angle(X))

% digital frequency
W = (0:length(X)-1)*2*pi/length(X);
figure(2), subplot(2,1,1), plot(W,abs(X))
figure(2), subplot(2,1,2), plot(W,angle(X))

% analog frequency
f = (0:length(X)-1)*fs/length(X);
figure(3), subplot(2,1,1), plot(f,abs(X))
figure(3), subplot(2,1,2), plot(f,angle(X))
