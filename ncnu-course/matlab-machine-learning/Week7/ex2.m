% Part 2
n = 0:1:39;
x = cos(0.1*pi*n) + 5*sin(0.5*pi*n) + exp(-0.2*n);
A = x'*x;
% 1.1
save;
% 1.2
save mydata1;
% 1.3
save mydata2 x;
% 1.4
save mydata3 x;
% 1.5
save mydata3 A -append;
% 1.6
clear;
load mydata1;
y = [x;log(x);x.^(1.2)];
save mydata1 y -append;
% 1.7
clear
load mydata1;
Y = reshape(y,40,3);
save mydata2 Y -append;
% 1.8
clear
load mydata1;
load mydata2;
load mydata3;
who;
whos;

