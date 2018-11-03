Sn = 1;
r = 0.2*exp(j*0.3*pi);
n = 1;
while abs(Sn - (1/(1-r))) >= 10^(-4)
    Sn = Sn + r^n;
    n = n+1;
end
disp(n)
disp(Sn)
