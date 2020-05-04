clc
clear
% exam 2019 2.e
a=zeros(4,3); %initial weight
a(:,1)=[1;0.5;0.5;-0.75]; % initialise weight of 3 classifier in column------------------
a(:,2)=[-1;2;2;1];
a(:,3)=[2;-1;-1;1];
yt=[1,0,1,0;...     %aug dataset in line--------------------------
    1,1,0,0;...
    1,0.5,0.5,0.25;...
    1,1,1,1;...
    1,0,0,0;...
    1,0,1,0;...
    1,1,0,0;...
    1,0.5,0.5,0.25;...
    1,1,1,1;...
    1,0,0,0;...
    1,0,1,0;...
    1,1,0,0;...
    1,0.5,0.5,0.25;...
    1,1,1,1;...
    1,0,0,0];
y=yt.';
LR=1; %learning rate-------------------------------------
w=[1,1,2,2,3,... %label 3 classifier-->3 lines'weight
    1,1,2,2,3,...
    1,1,2,2,3];
g=zeros(15,3);%------------------------------------
for i=1:15%-----------------------------------------
    disp('iteration');
    disp(i);
    a1t=a(:,1)'
    a2t=a(:,2)'
    a3t=a(:,3)'
    g(i,1)=a1t*y(:,i); % gx calculation
    g(i,2)=a2t*y(:,i);
    g(i,3)=a3t*y(:,i)
    
    if g(i,1)==max(g(i,:))    % j assignment
        j=1;
    elseif g(i,2)==max(g(i,:))
        j=2;
    elseif g(i,3)==max(g(i,:))
        j=3;
    end
    if j~=w(i)    %update vector matrix a
        a(:,w(i))=a(:,w(i))+LR*y(:,i);
        a(:,j)=a(:,j)-LR*y(:,i);
    end
end

        