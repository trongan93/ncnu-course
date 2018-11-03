% part 1
x1 = (-(3/8)*pi):0.01:((3/8)*pi);
y1 = tan(x1);
figure(1), plot(x1,y1);
xlabel('displacement (m)');
ylabel('temperature (degree)');
title('the function curve');
axis([-3 3 -4 4]);
hold on;


x2 = -5:0.01:5;
y2 = ((x2>0).*(1./(1+exp(-3.*x2))))&((x2<=0).*(4.*x2));
figure(1), plot(x2,y2);
xlabel('displacement (m)');
ylabel('temperature (degree)');
title('the function curve');
axis([-3 3 -4 4]);
hold off;
% part 2

figure(2),
fplot(@(x1) tan(x1),[-3 3])
fplot(@(x2) ((x2>0).*(1./(1+exp(-3.*x2))))&((x2<=0).*(4.*x2)), [-3 3])


