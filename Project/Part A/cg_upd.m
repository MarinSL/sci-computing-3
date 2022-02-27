function [x,n] = cg_upd(A,b,tol)
    r = b;
    p = b;  
    n = 0;

    x = zeros(size(b, 1), 1);
    
    while (norm(A*x - b) >= tol)
        alpha = (p'*r)/(p'*(A*p));
        x = x + alpha*p;
        r_prev = r;
        r = r - alpha*(A*p);
        gc_coef = -(r'*r)/(r_prev'*r_prev);
        p = r - (gc_coef)*p;
        n = n + 1;
    end
end