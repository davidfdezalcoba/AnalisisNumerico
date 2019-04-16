function f=jacvanderpol(f,x,par)
	alpha = par(1);
	beta = par(2);
	f = [0, 1; -2*alpha*x(1)*x(2)-1, alpha*(beta-x(1)^2)];
end
