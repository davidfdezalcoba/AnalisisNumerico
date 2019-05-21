%testmidiffin
mispracticas;
[t,u] = feval(@midiffin, tinic, tfin, N, a, b, C1, C2, pqr);
t = t.';
misgraficas;
