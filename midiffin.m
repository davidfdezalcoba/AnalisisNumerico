function [t,u] = midiffin(tinic, tfin, N, a, b, c1, c2, pqr)
%midiffin
	p = pqr{1};
	q = pqr{2};
	r = pqr{3};

	if (c1 == 0 && c2 == 0)
		h = (tfin-tinic)/(N+1);
		t = tinic:h:tfin;
		u = zeros(1, N+2);
		for i = 1:N
			ps(i) = p(t(i+1));
			qs(i) = q(t(i+1));
			rs(i) = r(t(i+1));
			As(i) = 2 + h^2*qs(i);
			Bs(i) = 1 + h/2*ps(i);
			Cs(i) = 1 - h/2*ps(i);
		end
		B = -h^2 * rs;
		B(1) = B(1) + Bs(1)*a;
		B(N) = B(N) + Cs(N)*b;
		% Resolver el sistema tridiagonal
		for k = 2:N
			aux = -Bs(k) / As(k-1);	
			As(k) = As(k) - aux*(-Cs(k-1));
			B(k) = B(k) - aux*(B(k-1));
		end
		u(:, N+1) = B(N) / As(N);
		for k = N-1:-1:1
			u(:,k+1) = (B(k) + Cs(k)*u(:, k+2))/As(k);
		end
		% Añadir condiciones contorno a la solución
		u(1, 1) = a;
		u(1, N+2) = b;
	end
end
