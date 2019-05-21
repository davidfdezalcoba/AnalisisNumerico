function [t,u] = mieulertr(tinic, tfin, N, x0, f, par)
    h = (tfin - tinic) / N;
    t = tinic:h:tfin;
    u = zeros(size(x0,1), N+1);
    u(:,1) = x0;
	for n = 1:N
		%Prediccion
        u(:,n+1) = u(:,n) + h * f(t(n), u(:,n), par);
		%Corrección
        u(:,n+1) = u(:,n) + h/2 * ...
		(f(t(n), u(:,n), par) + f(t(n+1), u(:,n+1), par));
    end
end
