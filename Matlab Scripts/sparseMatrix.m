clear all; close all;
m=5;
n=m*m;
% clear all variables and figures
% N value in x and y directions
% total size of matrix
e0=zeros(n,1);
e1=ones(n,1);
% vector of zeros
% vector of ones
e2=e1;
% copy the one vector
e4=e0;
% copy the zero vector
for j=1:m
e2(m*j)=0; % overwrite every m^th value with zero
e4(m*j)=1; % overwirte every m^th value with one
end
% e3(2:n,1)=e2(1:n-1,1); e3(1,1)=e2(n,1); % shift to correct
% e5(2:n,1)=e4(1:n-1,1); e5(1,1)=e4(n,1); % positions
% place diagonal
matA=spdiags([e1 e2 -4*e1 e2 e1], ...
[-(n-m) -m 0 m (n-m)],n,n);
% matA=spdiags([e1 e1 e5 e2 -4*e1 e3 e4 e1 e1], ...
% [-(n-m) -m -m+1 -1 0 1 m-1 m (n-m)],n,n);
spy(matA) % view elements the matrix structure
grid on