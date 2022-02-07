lstw = [1 5 10 100];
lstn = [100 500 1000];
TOL = 0.00001;

for i=lstw
    for j=lstn
        A = rand(j) + diag(i*ones(j,1));
        b = rand(j,1);
        fprintf("w: "+i+" N: "+j+"\n");
        seccal(A,b,TOL);
    end;
end;
