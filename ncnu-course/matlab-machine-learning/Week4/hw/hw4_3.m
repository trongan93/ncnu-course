% Use If-else
x1 = [0.0:0.1:4.0]
y = []
for x = 0.0 : 0.1 : 4.0
    if x >= 0.0 && x <= 1.0
        y1 = 2*log(abs(x-2)+0.1)+1.3;
        y = [y,y1]
    elseif x >= 1.1 && x <= 2.0
        y2 = -0.3*x +1.6
        y = [y,y2]
    elseif x >= 2.1 && x <= 4.0
        y3 = exp(-((x-2).^2)/2)
        y = [y,y3]
    end 
end
plot(x1,y,'b')
hold on
% Use logical array
xb1 = [0.0:0.1:4.0]
xb1_check1 = (xb1 >= 0) == (xb1 <= 1)
xb1_check2 = (xb1 >= 1.1) == (xb1 <= 2.0)
xb1_check3 = (xb1 >= 2.1) == (xb1 <= 4.0)

yb1 = (2*log(abs(xb1-2)+0.1)+1.3) .* xb1_check1
yb2 = (-0.3*xb1 +1.6) .* xb1_check2
yb3 = exp(-((xb1-2).^2)/2)
y1 = yb1 + yb2 + yb3
plot(x1,y1,'g')
hold off










    