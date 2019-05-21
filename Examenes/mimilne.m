function [t,u] = mimilne(tinic, tfin, N, x0, f, par)
    h = (tfin - tinic) / N;
    t = tinic:h:tfin;
    u = zeros(size(x0,1), N+1);
    u(:,1) = x0;
    [t_p, u] = feval(@mirk4, t(1), t(4), 3, x0, f, par); 
    for n = 4:N
        u(:,n+1) = u(:,n-3) + 4/3*h* ...
		( 2*f(t(n), u(:,n), par) - f(t(n-1), u(:,n-1), par) + ...
		2*f(t(n-2), u(:,n-2), par));
    end
end
