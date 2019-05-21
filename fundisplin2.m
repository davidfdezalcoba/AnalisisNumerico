%Fundisplin2
function dx = fundisplin2(t,x,pqr)
    %Aquí par es una lista con las funciones p, q, r (no un vector)
    p = pqr{1};
    q = pqr{2};

    dx = [x(2); p(t)*x(2) + q(t)*x(1)];
end
