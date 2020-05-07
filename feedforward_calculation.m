clc
clear all
%% feedforward

x=[1;   % input  3*1-----------------
   5 ];

% weight 1  % 3*2
w=[1 0;   
   0.5 -3];
w0=[0;-2];
% weight 2  %1*2----------------------
m=[6 7];  
m0=-8;
y=w * x +w0
z= m*y+ m0

