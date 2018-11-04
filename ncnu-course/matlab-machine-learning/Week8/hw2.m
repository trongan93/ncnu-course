a1 = [1 0.4];
b1 = [1 -0.8];
[X1,W1] = freqz(b1,a1);
figure(1),subplot(2,1,1), plot(W1, abs(X1));
figure(1),subplot(2,1,2), plot(W1, phase(X1));

a2 = [1];
b2 = [1 -1.7 0.72];
[X2,W2] = freqz(b2,a2);
figure(2),subplot(2,1,1), plot(W2, abs(X2));
figure(2),subplot(2,1,2),plot(W2, phase(X2));

a3 = [1];
b3 = [1 0.4 0.3];
[X3,W3] = freqz(b3,a3);
figure(3),subplot(2,1,1), plot(W3, abs(X3));
figure(3),subplot(2,1,2), plot(W3, phase(X3));

