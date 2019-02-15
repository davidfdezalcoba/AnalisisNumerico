function f = funcvanderpol(t, x, par)
%FUNCVANDERPOL Summary of this function goes here
%   Detailed explanation goes here
    alpha = par(1);
    beta = par(2);
    f = [x(2); -alpha*(x(1)^2-beta)*x(2) - x(1)];
end

