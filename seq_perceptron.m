clc
clear
%% Sequential perceptron 
% tutorial 2-9
% y-predicted label
% t-real label
% a weight
a=[1,0,0].'; %[-theta, w1,w2]-------------------------------------------
lr=1; % learning rate----------------------------------------
x=[1 1 1  1  1  1;      % augmented [1;x1;x2]--------------------------------
   0 1 2 -3 -2 -3 ;
   2 2 1  1 -1 -2];

t=[1 1 1 -1 -1 -1 ];% true label----------------------------------------

N=size(x,2);
for j=1:13
    disp('iteration ')
    j;
    i=mod(j,N)
    if i==0
        i=N
    end
    
    a % current weight
    
    g_x=a.'*x(:,i) % yk***************************************************
    
    % linear discriminant function: decide class:[1,-1] 
    if g_x >0  
        y=1
    else  
        y=-1
    end
    
    % update weight
    if y==t(i)
        a=a
    else
        a=a+ lr * t(i) * x(:,i)
    end
    
end


%% Sequential perceptron & normalisation
% tutorial 2-10
% y-predicted label
% t-real label
% a weight
a=[1,0,0].'; %[-theta, w1,w2]-------------------------------------------
lr=1; % learning rate----------------------------------------
x=[1 1 1  1  1  1;      % augmented [1;x1;x2]--------------------------------
   0 1 2 -3 -2 -3 ;
   2 2 1  1 -1 -2];

x=[1 1 1  -1  -1  -1;      % normalised [1;x1;x2]--------------------------------
   0 1 2   3   2   3 ;
   2 2 1  -1   1   2];

% t=[1 1 1 -1 -1 -1 ];% true label----------------------------------------

N=size(x,2);
for j=1:6
    disp('iteration ')
    j;
    i=mod(j,N)
    if i==0
        i=N
    end
    
    a % current weight
    
    g_x=a.'*x(:,i) % yk***************************************************
    
    % update weight
    if g_x >0  
        a=a
    else  
       a=a+ lr * x(:,i)
    end
    
end