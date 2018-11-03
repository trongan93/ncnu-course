n = 0:99;
s = n.* exp(-0.1*n);
d = 0.1*randn(size(n));
x = s + d;
figure(1),plot(n,s,n,x);