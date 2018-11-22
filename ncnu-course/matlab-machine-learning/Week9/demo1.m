clc
clear
close all
points = 1000000;
r1=rand(1,points);
r2=randn(1,points);
hist(r1,1000)
title('rand: Uniform distribution')
figure
hist(randn(points,1),1000)
title('randn: Normal distribution')
str=['Mean of rand =',num2str(mean(r1))];
disp(str)
str=['Mean of randn =',num2str(mean(r2))];
disp(str)
str=['Variance of randn =',num2str(var(r2))];
disp(str)