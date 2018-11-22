% x = -1:0.05:1;
% y = 1./(1+exp(-3*x));
% x = x';
% y = y';
% n = 3;
% p = polyfit(x,y,n);
% new_y = polyval(x,y,n);


x2=-0.3:0.05:0.7; 
y2=5*sin(2*pi*x2)+2; 
% figure(2),plot(x2,y2);
n2 = 3;
p2=polyfit(x2,y2,n2);
new_y2 = polyval(p2,x2); 
E2 = norm(y2-new_y2)^2
figure(2),plot(x2,y2,'r',x2,new_y2,'b');
