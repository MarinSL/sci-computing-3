function x = seccal(A,b,tol)

% A = [ 10 -1 2 0 ; -1 11 -1 3 ; 2 -1 10 -1; 0 3 -1 8]; %matrix A
% b = [6;25;-11;15]; %matrix B
% tol = 0.0001; %tolerance
q = 1;
N = 100;
tol = 0.0001;
A = rand(N) + diag(q*ones(N,1));
b = rand(N,1);
N = 100;
% % alpha = 1+0.00001;
% % z = zeros(1,(N))+alpha;
% % z1 = zeros(1,(N-1))-1;
% % A =  diag(z) + diag(z1,1) + diag(z1,-1);
% % b = rand(N,1);
% % tol = 0.00001;


tic;
x1 = A\b;
fprintf('Backslash took %g sec \n', toc);

tic;
[x2,n] = jacobi(A,b,tol);
fprintf('jacobi took %g sec \n' , toc);
fprintf('jacobi took %g steps \n' , n);

tic;
[x3,n] = gs(A,b,tol);
fprintf(' gs took %g sec \n', toc);
fprintf('gs took %g steps \n' , n);

tic;
[x4,n] = cg_upd(A,b,tol);
fprintf(' cg took %g sec \n', toc);
fprintf('cg took %g steps \n' , n);

tic;
x5 = myownLU(A,b); 
fprintf('myownLU took %g sec \n', toc); 

tic;
[L,U] = lu(A);
y = L\b;
x6 = U\y;
fprintf(' matlab LU took %g sec \n', toc);


