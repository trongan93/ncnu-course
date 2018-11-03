%% Part1
x = randn(1,10000);
% hist(x)
% hist(x,100)
y = hist(x,100);
figure(2), subplot(2,1,1), plot(y);
figure(2), subplot(2,1,2), bar(y);
[y,m] = hist(x,100);
figure(3), bar(m,y);
y(1)

%% Part2
y2 = y/sum(y);
figure(4), subplot(3,1,1),  bar(m,y2);
t = -4:0.01:4;
f = 1/sqrt(2*pi)*exp(-t.^2/2);
figure(4), subplot(3,1,2), bar(t,f);
figure(4), subplot(3,1,3), plot(t,f);
