%% Part 1
y1=rand(1,200)-1.2;
y2=rand(1,150)-0.5; 
y3=rand(1,250);
y4=rand(1,100)+0.7;
y5=rand(1,150)+1;
y = [y1 y2 y3 y4 y5];

figure(1), subplot(3,1,1), bar(hist(y,20))
relative_y = y/sum(y);
figure(1), subplot(3,1,2), bar(hist(relative_y,15))

x = -1.3:0.3:1.4;
figure(1), subplot(3,1,3), bar(hist(y,x))

mean_y = mean(y);
mode_y = mode(y);
median_y = median(y);
variance_y = var(y);