mispracticas
[t,u,h] = feval(@mi2metadap, tinic, tfin, N, x0, fun, fac, facmax, hmin, hmax, h0, mono, mono2, orden, orden2, TOL, par)
t = t.';
misgraficas

figure(4);
plot(t, h);
title('Pasos empleados');
legend('h');
