function f = funclorenz(t, x, par)
    sigma = par(1);
    rho = par(2);
    beta = par(3);
    f = [sigma*(x(2)-x(1)); rho*x(1) - x(2) - x(1)*x(3); x(1)*x(2) - beta*x(3)];
end
