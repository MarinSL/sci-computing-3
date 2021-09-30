A=soapfilm(3,3);
print(GJ);
tic
GJ = JacobiMatrix(A);
print(GJ);
toc
tic
GGS = GaussSeidelMatrix(A);
toc
max(abs(eig(GJ)))

