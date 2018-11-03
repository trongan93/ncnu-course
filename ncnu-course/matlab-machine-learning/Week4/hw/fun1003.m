function y = fun1003(x,m)
    y = []
    for i = 0:m-1
        sumyi = 0
        for k = 0:length(x)-1
            sumyi = sumyi + (x(k+1)*exp(-j*((2*pi*i*(k+1))/m)));
%             sumyi = sumyi + x(k+1)
%             disp(sumyi)
            y = [y, sumyi]
        end
    end
end