%% kmeans  
% distance between xi and center 1& 2
clc 
clear

center1=[3;2];
center2=[4;0];
x=[[1;0],[0;2],[1;3],[3;0],[3;1]]
N=size(x,2);

for i=1:N
    disp('iteration i:')
    i
    distance1=norm(x(:,i)-center1) % distacne to cluster 1
    distance2=norm(x(:,i)-center2)
end

