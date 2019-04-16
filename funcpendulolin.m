function f = funcpendulolin(t, theta, par)
    beta = par(1);
    g = par(2);
    l = par(3);
    f = [theta(2); -2*beta*theta(2) - g/l*theta(1)];
end
