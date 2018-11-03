function y = functionD(x)
w = [-pi:0.01:pi]
lenX = length(x)
for m = -pi:0.01:pi
    sumX = 0
    for n = 0:1:lenX-1
        sumX = sumX + (x(n+1)*exp(-j.*m.*n))
    end
end
end