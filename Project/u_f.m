function u = u_f(x)
    if (abs(2*x-0.3)<=0.25)
        u=exp(-300*((2*x-0.3)^2));
    else 
        u=0;
    end