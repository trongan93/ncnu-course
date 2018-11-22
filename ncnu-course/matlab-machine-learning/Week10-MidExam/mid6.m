% Part 1
x = -3:0.01:3;
y1_vl = 1./(1+exp(-x));
y2_vl = 1./(1+exp(-3.*x));

y1_cp = x >= -3 & x <= 0;
y2_cp = x > 0 & x <=3;
y1 = y1_cp .* y1_vl + y2_cp .* y2_vl;

figure(1), plot(x,y1);

% Part 2
x2 = -1.5:0.01:1.5;
y2 = 0.2.*fun_g(x2,-0.5,1) + 0.3.*fun_g(x2,0.3,2) + 0.5.*fun_g(x2,1,3);
figure(2), plot(x2,y2);