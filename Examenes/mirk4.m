function [t,u] = mirk4(tinic, tfin, N, x0, f, par)
%MIRK4 Método de Runge-Kutta para la práctica2
%   Detailed explanation goes here
    h = (tfin - tinic) / N;
    t = tinic:h:tfin;
    u = zeros(size(x0, 1) , N+1);
    u(:,1) = x0;
    for i = 1:N
        k1 = f(t(i), u(:,i), par);
        k2 = f(t(i) + h/2, u(:,i) + k1*h/2, par);
        k3 = f(t(i) + h/2, u(:,i) + k2*h/2, par);
        k4 = f(t(i) + h, u(:,i) + k3*h, par);
        ks = k1 + 2*k2 + 2*k3 + k4; 
        u(:,i+1) = u(:,i) + h/6*ks;
    end
end

