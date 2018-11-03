% Part 3 -- pp1
r = 0.6*exp(j*0.3*pi);
sN = 0;
n = 1;
while abs((1/(1-r))-sN) > 10^-4;
    sN =  sN+ r.^(n-1);
    n = n+1;
end;
sN
n

% Part 3 -- pp2
sN2 = 0
n2 = 1;
while abs(log(2)-sN2) > 10^-4
    sN2 = sN2 + ((-1)^(n2+1)/n2);
    n2 = n2+1;
end;
sN2
n2
