clc
clear
%% Batch perceptron learning with sample normalisation
% tutorial 2-6
% 1 epoch, for next epoch need to update initial a<- new_a
% y-predicted label
% t-real label
% a weight
a=[-25 6 3].'; % initial [-theta, w1,w2]-------------------------------------------

lr=1; % learning rate----------------------------------------
x=[1 1 -1 -1;      % augmented [1;x1;x2]+ normalisation--------------------------------
   1 2 -4 -5 ;
   5 5 -1 -1];

t=[1 1 -1 -1 ];% true label----------------------------------------

N=size(x,2);
sum_misclass_x=zeros(3,1);
for j=1:N
    disp('iteration ')
    j;
    i=mod(j,N)
    if i==0
        i=N
    end
    
    a; % current weight
    g_x=a.'*x(:,i) % yk***************************************************
    
    % linear discriminant function [1,-1]
    if g_x >0  
        sum_misclass_x=sum_misclass_x;      
    else
        sum_misclass_x=sum_misclass_x+ x(:,i);
    end
end

a=a + lr * sum_misclass_x

