clc
clear
%% radial basis 
nH=2
% input x
x=[-1 -1 1 1;
   -1  1 0 1];
% center of basis function
c1=[-1 -1];
c2=[1 1];

rio_max=norm(c1-c2,2) 

Y=rio_max/sqrt(2*nH)

Nx=size(x,2)
d=zeros(Nx,1)
for i=1:Nx
    disp('iteration')
    i
    d(i)=norm(x(:,i)-c1)
end
% y=h(d);
% 
% 
% 
% 
% function h=h(x)
