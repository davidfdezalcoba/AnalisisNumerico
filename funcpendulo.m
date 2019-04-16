function f = funcpendulo(t, theta, par)
    M = par(1);
    beta = par(2);
    g = par(3);
    l = par(4);
    f = [theta(2); M - 2*beta*theta(2) - g/l*sin(theta(1))];
end
