%init stuff
N = 10;
h = 1/(N-1);
a = 1/N^2;
k = N;
e=h^2/(2*k);
z = zeros(1,(N));
z1 = zeros(1,(N-1))+1;
z2 = zeros(1,(N))+2;
A =  (diag(z) + diag(z1,1) - diag(z1,-1))
A(1,N) = -1;
A(N,1) = 1;
display(A);
B =  (diag(z2) + diag(z1,1) + diag(z1,-1))
B(1,N) = 1;
B(N,1) = 1;
display(B);
C = (-a/(2*h))*A + (e/(h^2))*B
dx = h;
%initial condition
u(1:N,1)=arrayfun(u_f,(0:dx:1)); 
% magic list???
tl = ones(N);
for i=1:N-1
    tl(i+1)=rk_f(h,C,tl(i));
end
u(:)=C*u(:); 
