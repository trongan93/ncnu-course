x = 2*randn(1,10000)+3;
figure(1), hist(x,100);
y1 = mean(x); 
y2 = median(x); 
y3 = mode(x); 
y4 = var(x); 
y5 = std(x);

x=(5-(-5))*rand(1,10000)-5;
figure(2), hist(x,100)
y6 = mean(x); 
y7 = median(x); 
y8=mode(x), y9=var(x), y10=std(x)
