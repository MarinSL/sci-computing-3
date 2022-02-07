ns = [41, 81, 161, 321, 641];
errors = [];

for i=1:length(ns)
    N = ns(i);
    h = 1/(N-1);
    
    [b,err]=try1(N,h);
    
    errors(end+1) = err;
    
    subplot(2,3,i);
    plot(0:h:1, b(N,:)) 
    title(['N=', num2str(N)])
end
subplot(2,3,6);
plot(0:0.2:1,errors(:));