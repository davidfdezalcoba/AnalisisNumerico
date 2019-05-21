% Fundisplin1
function dx = fundisplin1(t,x,pqr)
    p = pqr{1};
    q = pqr{2};
    r = pqr{3};

	dx = zeros(2,1);

    dx = [x(2); p(t)*x(2) + q(t)*x(1) + r(t)];
end
