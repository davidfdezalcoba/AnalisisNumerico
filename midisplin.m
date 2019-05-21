%midisplin.m
function [t,u] = midisplin(tinic, tfin, N, a, b, pqr, c1, c2)

	if (c1 == 0 && c2 == 0)
		[t,v1] = feval(@mirk4, tinic, tfin, N, [a;0], @fundisplin1, pqr);
		[t,v2] = feval(@mirk4, tinic, tfin, N, [0;1], @fundisplin2, pqr);
		if (v2(1, N+1) ~= 0)
			u = v1 + (b-v1(1, N+1))/v2(1, N+1)*v2;
		else
			if (v1(1,N+1) == b)
				disp("PCL tiene infinitas soluciones x(t) = v1(t) + s*v2(t), s arbitrario");
				disp("Escogemos s=0");
				u = v1;
			else
				disp("No existe solución para PCL");
			end
		end
	end

	if (c1 == 0 && c2 == 1)
		[t,v1] = feval(@mirk4, tinic, tfin, N, [a;0], @fundisplin1, pqr);
		[t,v2] = feval(@mirk4, tinic, tfin, N, [0;1], @fundisplin2, pqr);
		if (v2(2, N+1) ~= 0)
			u = v1 + (b-v1(2, N+1))/v2(2, N+1)*v2;
		else
			if (v1(2,N+1) == b)
				disp("PCL tiene infinitas soluciones x(t) = v1(t) + s*v2(t), s arbitrario");
				disp("Escogemos s=0");
				u = v1;
			else
				disp("No existe solución para PCL");
			end
		end
	end

	if (c1 == 1 && c2 == 0)
		[t,v1] = feval(@mirk4, tinic, tfin, N, [0;a], @fundisplin1, pqr);
		[t,v2] = feval(@mirk4, tinic, tfin, N, [1;0], @fundisplin2, pqr);
		if (v2(1, N+1) ~= 0)
			u = v1 + (b-v1(1, N+1))/v2(1, N+1)*v2;
		else
			if (v1(1,N+1) == b)
				disp("PCL tiene infinitas soluciones x(t) = v1(t) + s*v2(t), s arbitrario");
				disp("Escogemos s=0");
				u = v1;
			else
				disp("No existe solución para PCL");
			end
		end
	end

	if (c1 == 1 && c2 == 1)
		[t,v1] = feval(@mirk4, tinic, tfin, N, [0;a], @fundisplin1, pqr);
		[t,v2] = feval(@mirk4, tinic, tfin, N, [1;0], @fundisplin2, pqr);
		if (v2(2, N+1) ~= 0)
			u = v1 + (b-v1(2, N+1))/v2(2, N+1)*v2;
		else
			if (v1(2,N+1) == b)
				disp("PCL tiene infinitas soluciones x(t) = v1(t) + s*v2(t), s arbitrario");
				disp("Escogemos s=0");
				u = v1;
			else
				disp("No existe solución para PCL");
			end
		end
	end

end
