function x = miecdiferencias(x0,x1,N)
    x = zeros(1, N+1);
    x(1, 1) = x0;
    x(1, 2) = x1;
    for i = 3:N+1
        y = [x(1, i-1),x(1, i-2)];
        x(1, i) = feval(@funcecdif, y);
    end
end

