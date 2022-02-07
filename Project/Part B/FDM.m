function [x,t] = FDM(N)
%gotta do another function that calls FDM and has the N values N= 41,81,161,321,641
eu = 0; %for the first task B.1 atleast
f = 0;
f = diff(u,t) + diff(u,x) - (diff(u,x)*eu(diff(u,x))); %weird ass thingy that i dont understand how we need
%function with conditions
w = f1(x);
h = 1/(N-1);
a=1;
t = a;
uh = 0;
for i = 1:N %rungekutta4
    k1 = h*f(t,w);
    k2 = h*f(t+h/2.0, w+h*k1/2.0);
    k3 = h*f(t+h/2.0, w+h*k2/2.0);
    t = a+i*h;
    k4 = h*f(t+h,w+k3);
    w = w+(k1+2.0*(k2+k3)+k4)/6.0;
    
    %can remove u and uh if it it does not work, the for loop contains a
    %woking rungekutta atleast
    u(i) = u; 
    uh(i) = u + (k1/6 + k2/3 + k3/3 + k4/6);
    %some type of plot with t and w
    hold on;
end
e = u - uh;
en = norm(e);
% the plot of the error gotta be in another function where the N values are
% contained 
