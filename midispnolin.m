function [t,u] = midispnolin(tinic, tfin, N, a, b, c1, c2, ffxfy, TOL)
%Midispnolin.m

	if (c1 == 0 && c2 == 0)
		s = (b-a) / (tfin-tinic);
		k = 0;
		F = TOL;
		while (abs(F) >= TOL)
			k = k+1;
			[t, u] = feval(@mirk4, tinic, tfin, N, [a; s; 0; 1], @fundispnolin, ffxfy);
			F = u(1,N+1) - b;
			disp(s);
			s = s - (u(1,N+1) - b) / u(3,N+1);
		end	
	end

	if (c1 == 0 && c2 == 1)
		s = b;
		k = 0;
		F = TOL;
		while (abs(F) >= TOL)
			k = k+1;
			[t, u] = feval(@mirk4, tinic, tfin, N, [a; s; 0; 1], @fundispnolin, ffxfy);
			F = u(2,N+1) - b;
			s = s - (u(2,N+1) - b) / u(4,N+1);
		end	
	end

	if (c1 == 1 && c2 == 0)
		s = b - a*(tfin-tinic);
		k = 0;
		F = TOL;
		while (abs(F) >= TOL)
			k = k+1;
			[t, u] = feval(@mirk4, tinic, tfin, N, [s; a; 0; 1], @fundispnolin, ffxfy);
			F = u(1,N+1) - b;
			s = s - (u(1,N+1) - b) / u(3,N+1);
		end	
	end

	if (c1 == 1 && c2 == 1)
		s = (b-a) / (tfin-tinic);
		k = 0;
		F = TOL;
		while (abs(F) >= TOL)
			k = k+1;
			[t, u] = feval(@mirk4, tinic, tfin, N, [s; a; 0; 1], @fundispnolin, ffxfy);
			F = u(2,N+1) - b;
			s = s - (u(2,N+1) - b) / u(4,N+1);
		end	
	end
	u = u(1:2,:);
	disp(k);
end
