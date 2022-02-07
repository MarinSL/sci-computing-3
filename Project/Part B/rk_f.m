function x = rk_f(t,A,u)
    k1=t*A*u;
    k2 = t*A*(u+1/2*k1);
    k3 = t*A*(u+1/2*k2);
    k4 = t*A*(u+k3);
    x = u+1/6*(k1+2*k2+2*k3+k4);
end

