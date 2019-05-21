function dx = fundispnolin(t,x,ffxfy)
	f = ffxfy{1};
	fx = ffxfy{2};
	fy = ffxfy{3};
	dx = zeros(4,1);

	dx = [x(2); ...
		  f(t,x(1),x(2)); ...
		  x(4); ...
		  fy(t,x(1),x(2))*x(4) + fx(t,x(1),x(2))*x(3)];
end
