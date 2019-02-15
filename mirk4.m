function [t,u] = mirk4(t0, tfin, N, x0, f)
%MIRK4 Método de Runge-Kutta para la práctica2
%   Detailed explanation goes here
    h = (tfin - t0) / N;
    t = t0:h:tfin;
    u = zeros(size(x0, 1) , N+1);
    u(:,1) = x0;
    for i = 1:N
        k1 = f(t(i), u(:,i));
        k2 = f(t(i) + h/2, u(:,i) + k1*h/2);
        k3 = f(t(i) + h/2, u(:,i) + k2*h/2);
        k4 = f(t(i) + h, u(:,i) + k3*h);
        ks = k1 + 2*k2 + 2*k3 + k4; 
        u(:,i+1) = u(:,i) + h/6*ks;
    end
end

