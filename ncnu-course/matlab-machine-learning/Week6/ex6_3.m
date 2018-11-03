% Part 3
% 3.1.1
b = [1];
a = [1 -0.4];
[X,W] = freqz(b,a);
figure(1),subplot(2,1,1), plot(W, abs(X));
subplot(2,1,2), plot(W, angle(X));

% 3.1.2
b = [1];
a = [1 0.4];
[X,W] = freqz(b,a);
figure(2),subplot(2,1,1), plot(W, abs(X));
subplot(2,1,2), plot(W, angle(X));

% 3.1.3
b = [1 0.2];
a = [1 -1.4 0.49];
[X,W] = freqz(b,a);
figure(3),subplot(2,1,1), plot(W, abs(X));
subplot(2,1,2), plot(W, angle(X));

% 3.1.4
b = [1 0 0.9];
a = [1 -0.2 -0.63];
[X,W] = freqz(b,a);
figure(4),subplot(2,1,1), plot(W, abs(X));
subplot(2,1,2), plot(W, angle(X));

% 3.2.1
b = [1];
a = [1 -0.4];
N = 50;
[H,T] = impz(b,a,N);
figure(5),plot(T,H);

% 3.2.2
b = [1];
a = [1 0.4];
N = 50;
[H,T] = impz(b,a,N);
figure(5),plot(T,H);

% 3.2.3
b = [1 0.2];
a = [1 -1.4 0.49];
N = 50;
[H,T] = impz(b,a,N);
figure(7),plot(T,H);

% 3.2.4
b = [1 0 0.9];
a = [1 -0.2 -0.63];
N = 50;
[H,T] = impz(b,a,N);
figure(8),plot(T,H);