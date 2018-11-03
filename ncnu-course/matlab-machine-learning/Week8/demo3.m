x = randn(1,10000);
[y,m] = hist(x,100);
A = sum(y*(m(2)-m(1)));
figure(1),subplot(2,1,1),bar(m,y/A);
t = -4:0.01:4;
f = 1/sqrt(2*pi)*exp(-t.^2/2);
figure(1), subplot(2,1,2), plot(m,y/A,'b',t,f,'r')