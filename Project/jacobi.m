function [x,n] = jacobi(A, b, TOL)
s = size(b,1);
n = 0;

D = diag(diag(A));
R = A-D;

x = zeros(s, 1); 
    while(norm(A*x - b) >= TOL)
        x = D\(b-R*x);
        n=n+1;
    end   
    
end

