clc
clear

%% linear threshold unit

w=[1,3,0.5]; %[-theta, w1,w2]-------------------------------------------
x=[ 1  1 1 1 1 ;   %[1;x1;x2]-------------------------------------------------
    2 -1 0 1 0 ;
    -1 0 0 1 -1 ]
 
N=size(x,2);
for j =1: 12
    disp('iteration ')
    j
    i=mod(j,N)
    if i==0
        i=N
    end
    disp('iteration xi')
    i
    wx=w * x(:,i) 
    
    % Heaviside function: y-->response of each neuron*********************
    if wx >0
        y=1
    else
        y=0
    end
    
end
   

