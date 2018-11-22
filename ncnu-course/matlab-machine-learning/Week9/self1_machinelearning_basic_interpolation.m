x0 = [7 9 11 14];
y0=[49 57 71 65];
x1=[8 10 13];
y1 = interp1(x0,y0,x1);

figure(1), stem(x0,y0);
hold on;
figure(1), stem(x1,y1);
hold on;
figure(1), plot(x0,y0);