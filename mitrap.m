function [t,u,numfun] = mitrap(t0, tfin, N, x0, f, jac, itmax)
%MITRAP 
    h = (tfin - t0) / N;
    t = t0:h:tfin;
    u = zeros(size(x0,1), N+1);
    numfun = 0;
    u(:,1) = x0;
    for i = 1:N
        %Método de Newton
        it = 0;
        x_old = u
        while it < itmax && abs(x_old-x) > h
            x_old = x;
            x = x -(f(x) / jac(x));
        end
        
        
        u(:,i+1) = u(:,i) + h/2*(f()*f());
    end
end

