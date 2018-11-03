% Part 2
% 2.1.1
n1 = 0:9;
n2 = 0:2;
h1 = (-1).^n1;
h2 = 0.3.^n2;
figure(1), plot(n1,h1,n2,h2);
% 2.1.2
n3 = 0:99;
n4 = 0:10;
xn3 = cos(0.1*pi*n3) + cos(0.9*pi*n3);
hn4 = (0.8).^n4;
xnhn = conv(xn3,hn4);
rangexnhn = conv(n3,n4);
figure(2), plot(rangexnhn,xnhn,n3,xn3);
% 2.2.1
xn5 = [1 1];
yn5 = conv(xn5,xn5);
figure(3), plot(yn5);
% 2.2.2
yn6 = conv(xn5,yn5);
yn7 = conv(xn5,yn6);
figure(4), plot(yn7);
% 2.2.3
ynn = conv(xn5,xn5)
for i = 2:100
    ynn = conv(xn5,ynn)
end
figure(5), plot(ynn);
