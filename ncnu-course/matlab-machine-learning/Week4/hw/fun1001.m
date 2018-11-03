function y = fun1001(x)
    y1 = log(abs(x)+5);
    y2 = exp(-abs(x));
    y3 = abs(x)+1;
    y = [y1;y2;y3];
end