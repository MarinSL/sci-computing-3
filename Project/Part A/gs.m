function [x,n] = gs(A,b,tol)
    A = sparse(A);
    M = tril(A);
    R = A-M;
    
    s = size(b,1);
    x = zeros(s,1);
    
    n = 0;
    
    while (norm(A*x - b) >= tol)
        x = M\(b-R*x);
        n = n+1;
    end
end