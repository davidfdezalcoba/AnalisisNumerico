function f=jacfuncbelza(f,x,par)
    alpha = par(1);
    beta = par(2);
    gamma = par(3);
    delta = par(4);
	f = [alpha*(-x(2) + 1 - 2*beta*x(1)), alpha * (1 - x(1)), 0;
        -1/alpha*x(2), -1/alpha*(1+x(1)), (1/alpha)*gamma;
		delta, 0, -delta];
end
