%% Part I
%% 1
% T1=1/30, T2=1/40 -> T0 = [T1, T2]= 1/10
% Fs > 2*40 = 80, choose Fs = 200

Fs = 200;
T = 0.1;   % 2T = 4T0 =0.4
t = -T: 1/Fs : T;
x = 5*cos(60*pi*t)+7*sin(80*pi*t);
figure(1),plot(t,x);

%% 2.1
n = 0:99;
x = (-0.6).^n;
X = fft(x, 128);
figure(1),plot(abs(X));
figure(2),plot(phase(X));

%% 2.2
Fs = 1/0.01;
t = 0: 0.01:5;
N = length(t);
x = exp(-2*t);
X = fft(x, N);
F = (0:N-1)* Fs/N;
figure(1),plot(F,abs(X));
figure(2),plot(F,phase(X));
