clc 
clear
%% multiclass perceptron
% tutorial 2-11
% g = aTy ( g1, g2, g3)


a=[1 0 -1 ;  % weight -- 3 linear discriminant function(in column)----
   1 0 -1 ;
   1 0 -1 ];
Na=size(a,2);
% augmented input x--------------------------------------
x=[1 1 1  1  1;
   1 2 0 -1 -1;
   1 0 2  1 -1 ];

t=[1 1 2 2 3];
lr=1; %learning rate-----------------------------------------------------------

Nx=size(x,2);

for i=2 % No.i input x, manually change 1 to Nx------------------------------------------
    for j=1:Na % number of g1 g2 g3-->Na=3
        g(1,j)=a(:,j).'*x(:,i);
        
    end 
end

 g% choose the biggest gi as predicted label 











