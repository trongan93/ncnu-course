x = -pi:0.01:pi;
y1 = sin(x);
y2 = cos(x.^2);
y3 = exp(-x.^2);
y4 = log(2*abs(x)+1);
y5 = log10(abs(x)+1);
y6 = tan(x);
y7 = floor(x);
y8 = round(x);
y9 = ceil(x);
plot(x,y1,'g',x,y2,'b',x,y3,'r',x,y4,'k',x,y5,'y',x,y6,'m',x,y7,'c',x,y8,'g',x,y9,'k');
legend('y1','y2','y3','y4','y5','y6','y7','y8','y9');

% Another option to show chart together
% figure(1)plot(x,y1)
% Part 2
