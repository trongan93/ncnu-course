%% Part I
%% 1
% T1=1/30, T2=1/40 -> T0 = [T1, T2]= 1/10
% Fs > 2*40 = 80, choose Fs = 200

Fs = 200;
T = 0.1;   % 2T = 4T0 =0.4
t = -T: 1/Fs : T;
x1 = 2*sin(50*pi*t);
figure(1),subplot(2,1,1),plot(t,x1);

x2 = cos(30*pi*t) + 3*sin(80*pi*t);
figure(1),subplot(2,1,2), plot(t,x2);

%% 2
%% 2.1
Fs = 1/0.01;
t = 0: 0.01:5;
N = length(t);
x3 = exp(-2*t);
X = fft(x3,N);
F = (0:N-1)* Fs/N;
figure(2),subplot(2,1,1),plot(F,abs(X));
figure(2),subplot(2,1,2),plot(F,angle(X));

%% 3
%% 3.1
Fs = [25 50 100 250 400];

for k = 1:5
    t = 0: 1/Fs(k): 2;
    N = length(t);
    x = sin(10*pi*t);
    F = (0:N-1)*Fs(k)/N;
    X = fft(x, N);
    figure(3),subplot(5,1,k),plot(F,abs(X));
end
