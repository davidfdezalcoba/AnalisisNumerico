function [t, u] = mieuler(tinic, tfin, N, x0, f, par)
%MIEULER Summary of this function goes here
%   Detailed explanation goes here
    h = (tfin - tinic) / N;
    t = tinic:h:tfin;
    u = zeros(size(x0, 1), N+1);
    u(:,1) = x0;
    for i = 1:N
        u(:,i+1) = u(:,i) + h*f(t(i), u(:,i), par);
    end
end

