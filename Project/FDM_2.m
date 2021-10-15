function [x,t] = FDM(N)
h=1/(N-1);                                            
x = 0:h:1;                                         
Y = zeros(1,length(x)); 
y(1) = -0.5;
dx = (u_f(x+2*h)-2*u_f+u_f(x-2*h))/h^2;

for i=1:(length(x)-1)                              
    k_1 = dt_f(x(i),y(i));
    k_2 = dt_f(x(i)+0.5*h,y(i)+0.5*h*k_1);
    k_3 = dt_f((x(i)+0.5*h),(y(i)+0.5*h*k_2));
    k_4 = dt_f((x(i)+h),(y(i)+k_3*h));
    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h; 
  
end
e = u - uh;
en = norm(e);
 