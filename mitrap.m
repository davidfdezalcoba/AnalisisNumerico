function [t,u,numfun] = mitrap(tinic, tfin, N, x0, f, jac, itmax, par)
%MITRAP 
    h = (tfin - tinic) / N;
    t = tinic:h:tfin;
    u = zeros(size(x0,1), N+1);
    numfun = 0;
    u(:,1) = x0;
    for n = 1:N
        %Método de Newton
        it = 1;
		%Z0...Zn
		z = zeros(size(x0,1), itmax); 
		%Z0 = Xn
		z(:,1) = u(:,n); 
		w = z(:,1);
        while (it < itmax && norm(w,inf) >= h^3)
			numfun = numfun + 2;
			Fn = u(:,n) + h/2 * (f(t(n),u(:,n),par) + f(t(n+1),z(:,it),par));
			%Gn = zit - xn - h/2 f(tn, xn) - h/2 f(tn+1, zit)
			Gn = z(:,it) - Fn;
			% DGn = I - h/2Dxf(tn+1,zit)
			DGn = eye(size(x0,1)) - h/2*jac(t(n+1),z(:,it),par);
			% DGn*w = Gn
			w = DGn\Gn;
			z(:,it+1) = z(:,it) - w;
			it = it + 1;
        end
        u(:,n+1) = z(:,it);
    end
end

