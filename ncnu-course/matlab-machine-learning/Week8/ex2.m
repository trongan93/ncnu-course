%% Part2
%% 2.1
x = rand(1,1000);
max = 19;
min = 1;
mean_value = 10;
y = (max-min).* x + min;

%% 2.2
figure(1), bar(hist(y,20));

%% 2.3
mean_x = mean(y);
sum_x = sum(x);
count_x = length(x);
stadard_deviation_x = sum_x/count_x;
standard_dev = std(x);

%% 2.4
u = [];
for i = 1:100
    u = [u,y];
end
mean_u = mean(u);
