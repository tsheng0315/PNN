clc
clear
%% Batch Delta
% 
w=[-1,-1,-2.5]; %[-theta, w1,w2]-------------------------------------------
lr=1; % learning rate----------------------------------------
x=[1  1 1  ;      % augmented [1;x1;x2]--------------------------------
   -1 1 0  ;
   0 0 -1];
t=[1 0 0];% target label----------------------------------------

N=size(x,2);
sum_error=0;
for j=1:N% iteration --------------------------------------------
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
    elseif wx==0
        yk=0.5
    else  
        yk=0
    end
    
    % update weight
    if yk==t(i)
        sum_error=sum_error
    else
        sum_error=sum_error  + ( t(i)-yk ) * x(:,i).';
    end
    
end

w=w+ lr *  sum_error  % w=w+ lr * sum [  (tk- yk) * xk]