clear;
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

[t,u,hs,errores] = feval(@mirkf45, tinic, tfin, N, x0, fun, fac, facmax, hmin, hmax, h0, TOL, par);
t = t.';
figure('Name', 'Mi examen');
subplot(3,1,1);
plot(t,u(1,:), 'r');
subplot(3,1,2);
plot(t,errores);
subplot(3,1,3);
plot(t,hs);
figure('Name', 'Diferencia')
funcion = 1./(2+sin(t.^3));
plot(t,u(1,:),'r',t,funcion,'b');
