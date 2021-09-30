function [x,n] = gs(A,b,tol)
%check the input, diagonal elements 
%of the matrix cannot be zero
M = tril(A);
R = A-M;
s = size(b,1);
n = 0;

x = zeros(s,1);
    while (norm(A*x - b) >= tol)
        x = M\(b-R*x);
        n = n+1;
    end

end