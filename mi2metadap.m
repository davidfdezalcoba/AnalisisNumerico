function [t,u,hs] = mi2metadap(tinic, tfin, N, x0, f, fac, facmax, hmin, hmax, h0, mono, mono2, orden, orden2, TOL, par)
	t = zeros(1, N+1);
    t(1) = tinic;
	hs = zeros(1, N+1);
	hs(1) = h0;

    u = zeros(size(x0,1), N+1);
    u(:,1) = x0;

	l = h0;
	n = 1;
	seguir = true;
	while (t(n) < tfin && seguir)
		s = t(n) + l;
		% Metodo externo orden mayor
		[~, y] = mono(t(n), s, 1, u(:,n), f, par); 
		% Metodo interno orden menor
		[~, z] = mono2(t(n), s, 1, u(:,n), f, par); 
		ERR = norm(y(:,2) - z(:,2)) / l;
		% Aceptamos los calculos
		if (abs(ERR) <= TOL)
			t(n+1) = s;
			hs(n+1) = l;
			u(:,n+1) = z(:,2);
			n = n+1;
		end

		% Parar el algoritmo
		if (lopt < hmin)
			seguir = false;
		end

		lopt = min(hmax, l*min(facmax, fac*(TOL/ERR)^(1/orden2)));
		l = lopt;
	end
	t = t(:,1:n);
	u = u(:,1:n);
	hs = hs(:,1:n);
end
