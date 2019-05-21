clear;
%mispracticas
fun = @misolex;
x0 = 1/2;
tinic=0;
tfin = 8;
N=1000;
fac = 0.9;
facmax=5;
hmin = 1e-5;
hmax = (tfin-tinic)*0.1;
h0 = hmin;
TOL =  1e-3;
par = [];
[t,u,h,err] = feval(@mirkf45, tinic, tfin, N, x0, fun, fac, facmax, hmin, hmax, h0, TOL, par)
t = t.';
% misgraficas

% figure(4);
% plot(t, h);
% title('Pasos empleados');
% legend('h');
