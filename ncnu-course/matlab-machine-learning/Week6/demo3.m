b = [1];
a = [1 -0.2];
[X,W] = freqz(b,a);
figure(1),subplot(2,1,1), plot(W, abs(X));
figure(1), subplot(2,1,2), plot(W,angle(X)); %instance phase to angle