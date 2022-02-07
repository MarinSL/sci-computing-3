function u2 = u_f2(x)
    if (abs(2*x-0.3)<=0.25)
        u2=exp(-300*((2*x-0.3)^2));
    elseif (abs(2*x-0.9)<=0.2)
        u2=1;
    elseif (abs(2*x-1.6)<=0.2)
        u2=sqrt(1-(((2*x-1.6)/0.2)^2));
    else 
        u2=0;
    end