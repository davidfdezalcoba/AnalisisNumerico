function [t,u,hs,errores] = mirkf45(tinic, tfin, N, x0, f, fac, facmax, hmin, hmax, h0, TOL, par)
	t = zeros(1, N+1);
    t(1) = tinic;
	hs = zeros(1, N+1);
	hs(1) = h0;
    errores = zeros(1, N+1);
    errores(1) = 0;
	l = h0;

    u = zeros(size(x0,1), N+1);
    u(:,1) = x0;

	A = [         0,          0,          0,         0,      0, 0; ...
		        1/4,          0,          0,         0,      0, 0; ...
		       3/32,       9/32,          0,         0,      0, 0; ...
		  1932/2197, -7200/2197,  7296/2197,         0,      0, 0; ...
		    439/216,         -8,   3680/513, -845/4104,      0, 0; ...
		      -8/27,          2, -3544/2565, 1859/4104, -11/40, 0];

	C = [0; 1/4; 3/8; 12/13; 1; 1/2];
	B = [25/216, 0, 1408/2565, 2197/4104, -1/5, 0];
	B_ = [16/135, 0, 6656/12825, 28561/56430, -9/50, 2/55];
	K = zeros(size(x0,1), 6); 

	lopt = l;
	n = 1;
	seguir = true;

	while (t(n) < tfin && seguir)
		s = t(n) + l;

		% Calcular K
		K(:,1) = f(t(n), u(:,n), par);
		for i=2:6
			K(:,i) = f(t(n) + l*C(i,1), u(:,n) + sum(l*repmat(A(i,1:i-1),size(x0,1),1).*K(:,1:i-1),2), par);
		end
		
		% Calcular ERR
		ERR1 = u(:,n) + l*(sum(repmat(B,size(x0,1),1).*K,2));
		ERR2 = u(:,n) + l*(sum(repmat(B_,size(x0,1),1).*K,2));
		ERR = norm(ERR1 - ERR2) / l;

		% Aceptamos los calculos
		if (abs(ERR) <= TOL)
			t(n+1) = s;
			hs(n+1) = l;
            errores(n+1) = ERR;
			u(:,n+1) = ERR1;
			n = n+1;
		end

		% Parar el algoritmo
		if (lopt < hmin)
			disp("Error, h < hmin");
			seguir = false;
		end

		lopt = min(hmax, l*min(facmax, fac*(TOL/ERR)^(1/4)));
		l = lopt;
	end
	t = t(:,1:n-1);
	u = u(:,1:n-1);
	hs = hs(:,1:n-1);
    errores = errores(:,1:n-1);
end
