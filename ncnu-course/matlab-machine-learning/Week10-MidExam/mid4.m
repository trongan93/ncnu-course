% part 1
k = 1:1:30;
x = 3 .* sin(k) + 4.*k - 2;
nk = length(k);
sum = 0;
for i = 1:nk
    sum = sum + exp(-(x(i)-20).^2);
end

% Part 2
b1 = log10(k)+1;
b = x/b1;
mb = mean(b);

% Part 3
x1 = 0;
k1 = 1;
while x1 < 60
    x1 = x1 + (3 .* sin(k1) + 4.*k1 - 2);
    k1 = k1 + 1;
end
disp(x1);



