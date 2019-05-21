%testmidispnolin.m
mispracticas
[t,u] = feval(@midispnolin, tinic, tfin, N, a, b, C1, C2, ffxfy, TOL);
t = t.';
misgraficas
