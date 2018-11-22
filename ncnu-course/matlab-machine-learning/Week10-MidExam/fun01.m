function y = fun01(x, sc)
    lx = length(x);
    y = 0;
    for i = 1: lx
        y = y + (x(i) * exp(-(j*sc*i)));
    end
end