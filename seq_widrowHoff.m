clc
clear
%% Sequential Widrow-Hoff with Normalisation
% tutorial 2-14
% b margin
% a weight
a=[1 0 0].'; %[w0, w1,w2]-------------------------------------------

x=[1 1 1  -1  -1 -1;  % aug + normalised [1;x1;x2, -1;-x1;-x2]--------------------------------
   0 1 2   3   2  3 ;
   2 2 1  -1  1  2];

b=[1 1 1 1 1 1];% margin------------------------------------------
lr=0.1; % learning rate---------------------------------------------

N=size(x,2);
for j=1:12 % iteration---------------------------------------------------------------
    disp('iteration ')
    j
    i=mod(j,N)
    if i==0
        i=N
    end
    
    a % current weight
    g_x = a.' * x(:,i) % at*xk ***********************************
    
    a = a + lr *(  b(i) -a.'* x(:,i) )* x(:,i)%   W-H formula

end
