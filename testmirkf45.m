clear;
mispracticas
[t,u,h] = feval(@mirkf45, tinic, tfin, N, x0, fun, fac, facmax, hmin, hmax, h0, TOL, par)
t = t.';
misgraficas

figure(4);
plot(t, h);
title('Pasos empleados');
legend('h');
