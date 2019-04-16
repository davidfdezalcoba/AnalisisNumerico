clear;
mispracticas;
par = [1, 1];
[t,u] = ode45(fun, [tinic, tfin], x0, [], par);
u=u.';
misgraficas;
