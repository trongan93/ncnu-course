Fs = 1/0.01;
t = 0:0.01:2;
N = 512;
x = 5 * cos(20 * pi .* t - 0.2 * pi) + 3 * sin(40 * pi .* t + 0.3 * pi);
X = fft(x,N);
F = (0:N-1)* Fs/N;
figure(1),subplot(2,1,1),plot(F,abs(X));
figure(1),subplot(2,1,2),plot(F,phase(X));