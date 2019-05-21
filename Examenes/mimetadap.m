function [t,u,hs] = mimetadap(tinic, tfin, N, x0, f, fac, facmax, hmin, hmax, h0, mono, orden, TOL, par)
	t = zeros(1, N+1);
    t(1) = tinic;
	hs = zeros(1, N+1);
	hs(1) = h0;

    u = zeros(size(x0,1), N+1);
    u(:,1) = x0;

	l = h0;
	lopt = l;
	n = 1;
	seguir = true;
	while (t(n) < tfin && seguir)

		s = t(n) + l;
		[~, y] = mono(t(n), s, 2, u(:,n), f, par); 
		[~, z] = mono(t(n), s, 1, u(:,n), f, par); 
		ERR = norm(y(:,3) - z(:,2)) / l;

		% Aceptamos los calculos
		if (abs(ERR) <= TOL)
			t(n+1) = s;
			hs(n+1) = l;
			u(:,n+1) = y(:,3);
			n = n+1;
		end

		% Parar el algoritmo
		if (lopt < hmin)
			disp("Error, h < hmin");
			seguir = false;
			disp(n);
		end
		
		lopt = min(hmax, l*min(facmax, fac*(TOL/ERR)^(1/orden)));
		l = lopt;
	end
	t = t(:,1:n);
	u = u(:,1:n);
	hs = hs(:,1:n);
end
