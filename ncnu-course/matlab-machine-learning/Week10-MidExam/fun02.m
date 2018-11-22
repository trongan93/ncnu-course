function y2 = fun02(x)
    y2 = [];
    lx = length(x);
    for m = 1 : lx
        yy2 = fun01(x,2*pi*m/lx);
        y2 = [y2,yy2];
    end
end