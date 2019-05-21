tinic = 0;
tfin = sqrt(10.5*pi);
N = 1000;
a = exp(-1);
b = 1;
c1 = 0;
c2 = 0;
ffxfy = {@(t,x,y)((2*sin(t^2) - 4*t^2*log(x))*x + 2*t*sin(t^2)*y),...
		 @(t,x,y)(2*sin(t^2) - 4*t^2*(1 + log(x))),... 
		 @(t,x,y)(2*t*sin(t^2))};
TOL = 1e-3;
[t,u,s,F] = feval(@midispnolin, tinic, tfin, N, a, b, c1, c2, ffxfy, TOL)
t = t.';
figure('Name', 'AproxSol');
plot(t, u(1,:), 'r');
figure('Name', 'Fs-b');
plot(s,F-b,'*r');
figure('Name', 'Diferencia');
plot(t, u(1,:), 'r', t, exp(-cos(t.^2)), 'b');
