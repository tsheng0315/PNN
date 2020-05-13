clc 
clear
%% final= a4T* y 
%% final: (x,y,z), a1* y, a2* y, a3* y 
% g = aTy ( g1, g2, g3)

% input vector
a=[0 0 0 ;  % decision variables of 3 linear discriminant function(column)----
   0 0 0;
   0 0 0];
size_a=size(a,2);

% augmented input x--------------------------------------
x=[1 1 1 1 1 1;
   1 2 0 -1 -1;
   1 0 2 1 -1 ];

length_x=size(x,2);

