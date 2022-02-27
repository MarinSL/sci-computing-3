function [b,err]= try1(N,h)
    h = 1/(N-1);
    epsilon = eps;
    %init matrix
    z = zeros(1,(N));
    z1 = zeros(1,(N-1))+1;
    z2 = zeros(1,(N))+2;
    A =  (diag(z) + diag(z1,1) - diag(z1,-1));
    A(1,N) = -1;
    A(N,1) = 1;
    display(A);
    B =  (-diag(z2) + diag(z1,1) + diag(z1,-1));
    B(1,N) = 1;
    B(N,1) = 1;
    display(B);
    C = (-1/(2*h))*A + (epsilon/(h^2))*B;
    display(C);

    x_scale = 0:h:1;
    u_init = zeros(N,1);

    for i=1:N
        u_init(i)=u_f(x_scale(i));
    end

    b=zeros(N);
    b(1,:) = u_init;

    for i=1:N-1
       rk = rk_f(h, C, b(i,:)');
       b(i+1,:) = rk(:,1);
    end

    err = norm(b(N, :)-u_init');

    %plot(0:h:1, b(N,:)) % pretty pic
    %plot(0:h:1, err)



