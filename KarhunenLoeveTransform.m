clc
clear

% % 2D Karhunen-L transform
% N=6;  %--------------------------------------------------------------------
% input=[[0;1],[3;5],[5;4],[5;6],[8;7],[9;7]] % line1: x; line2:y------------
% 
% x_mean=[sum(input(1,:))/N;sum(input(2,:))/N]; % mean of x
% 
% input_zero_mean = input-x_mean  
% 
% C=(1/N)*(input_zero_mean*input_zero_mean.') %covariance matrix of zero-mean data
% 
% % V: columns:  eigenvector
% % D: diagonal: eigenvalues, find largest one-->  change v_new
% [V,D,]=eig(C)
% 
% % reduce dimension
% % keep largest eigenvalues and eigenvector, discard rest
% v_new=[-0.8309;
%        -0.5564];%first column: largest vector, from D --------------------------------------------------
% 
% % y1, y2 y3 y4...----------------------------------------------------
% y=(v_new.')*input_zero_mean



%%
% 3D Karhunen-L transform
N=4;  %--------------------------------------------------------------------
input=[[1;2;1],[2;3;1],[3;5;1],[2;2;1],] % line1: x; line2:y---------------

x_mean=[sum(input(1,:))/N;sum(input(2,:))/N;sum(input(3,:))/N]; % mean of x

input_zero_mean = input-x_mean  

C=(1/N)*(input_zero_mean*input_zero_mean.') % covariance matrix of zero-mean data

% V: columns:  eigenvector
% D: diagonal: eigenvalues, find largest one->change v_new
[V,D,]=eig(C)

% reduce dimension
% keep largest eigenvalues and eigenvector, discard rest
v_new=[0.4719   -0.8817 ; % first column: largest vector, from D--------------------
        0.8817   0.4719;
        0         0];

% y1, y2 y3 y4...----------------------------------------------------
y=(v_new.')*input_zero_mean
