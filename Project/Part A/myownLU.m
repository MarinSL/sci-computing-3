function [x,n] = myownLU(A,b)
    A = sparse(A);
    A = A.';
    s = size(b,1);
    L = zeros(s);
    n = 0;

    for i=1:(s-1)
        for j=(i+1):s
            if A(i,j)~= 0
                mult = A(i,j) / A(i,i);
                L(i,j) = mult;
                A(j,:) = A(j,:) - (mult*A(:,i)).'; 
                n = n + 1; 
            end
        end    
    end 

    L = L.';
    L = L + diag(diag(ones(s)));
    U = triu(A);
    
    y = L\b;
    x = U\y;
end
