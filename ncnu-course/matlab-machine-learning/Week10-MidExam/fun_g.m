function g = fun_g(x,mu,sigma)
    g = (1/sqrt(2*pi*sigma)).* exp((-(x-mu).^2)./(2.*sigma.^2));
end