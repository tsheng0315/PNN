clc
clear
% linear discriminant function
w=[3,-1,-2]; %[w0, w1,w2]-------------------------------------------

x=[1   1 1 1  1 ;       %[1;x1;x2]-------------------------------------------------
   2  -1 0 1  2.5 ;
   -1  0 0 1 1.5];

N=size(x,2);

for i=1:N
    disp('iteration ')
    i
    wx=w*x(:,i) % yk, if linear discriminant function >0--class 1
    if wx >=0  % linear discriminant function
        
        disp('class1')  % class 1
        y=1
    else
        disp('class2')  % class2
        y=-1
    end
    
end




