function [x,n] = jacobi(A, b, TOL)
    x = [];
    s = size(b,1);
    n = 0;
    
    D = diag(diag(A));
    R = A-D;

    if(size(find(diag(D)==0, 1, 'first')) > 0)
        return;
    else
        x = zeros(s, 1);
        while(norm(A*x - b) >= TOL)
            x = D\(b-R*x);
            n = n + 1;
        end
    end
end

