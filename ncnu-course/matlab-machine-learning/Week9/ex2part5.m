x = 0:0.05:4; 
y = exp(x) + 3 * randn(size(x));
figure(1), plot(x,y)
n = 2; 
p = polyfit(x,y,n);
f = polyval(p,x);
plot(x,y,'g',x,f,'-')
legend('noise','linear fit')
no = norm(y-f)^2;

