function [x,n] = cg(A,b,tol)
r = b;
rho = norm(r)^2;
p = r;

n=0;

s = size(b,1);
x = zeros(s,1);

    while (norm(A*x - b) >= tol)
        w = A*p;
        alpha = rho/(p'*w);
        x = x + alpha*p;
        r = r - alpha*w;
        rho_prev = rho;
        rho = norm(r)^2;
        p = r + (rho/rho_prev)*p;
        n=n+1;
    end
end