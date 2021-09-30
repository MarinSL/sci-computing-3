function [x,n] = myownLU(A,b)
% decomposition
A=A.';
s = size(b,1);
L = zeros(s);
for i=1:(s-1)
    for j=(i+1):s
        if A(i,j)~= 0
            mult = A(i,j)/A(i,i);
            L(i,j) = mult;
            A(j,:) = A(j,:)- (mult*A(:,i)).'; 
        end
    end    
end 
L = L.';
L = L+diag(diag(ones(s)));
U = triu(A);

y = linsolve(L,b);
x = linsolve(U,y);
end
