x = -4:0.02:4;
y = (1/sqrt(2*pi))*exp(-x.^2/2);
f = 0;
% for i = 1:6
%     p = polyfit(x,y,i);
%     f = f + polyval(p,x);
%     figure(1), subplot(6,1,i), plot(x,y,'g', x,f, '-');
% end
p = polyfit(x,y,6);
f = f + polyval(p,x);
figure(1), plot(x,y,'g', x,f, '-');

p2 = polyfit(x,log(y),1);
f2 = polyval(p2,x);
figure(2), plot(x,y,'g', x,exp(f2), '-');

p3 = polyfit(x, log(y), 1);
f3 = polyval(p2,x);
figure(3), plot(x,y,'g', x,exp(f3), '-');