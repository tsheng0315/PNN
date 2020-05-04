clc
clear
%% Sequential Hebbian
% 
w=[1,3,0.5]; %[-theta, w1,w2]-------------------------------------------
lr=1; % learning rate----------------------------------------
x=[1   1 1 1  1 ;      % augmented [1;x1;x2]--------------------------------
   2  -1 0 1  0 ;
   -1  0 0 1 -1];

N=size(x,2);
for j=1:12% iteration --------------------------------------------
    disp('iteration ')
    j
    i=mod(j,N)
    if i==0
        i=N
    end
    
    wx=w*x(:,i) % yk, if wx >0--class 1
    
    % Heasive function [1,0]
    if wx >0  
        yk=1
    else  
        yk=0
    end
        w=w+ lr * yk * x(:,i).'  % w=w+lr *yk * xk
    
end