clc
clear

x=[2    -4;   % input in column-----------------
   -0.5 -6];

z=[98   -168; % output in column-------------------
   7.5  -246];

w_y=[];
w_z=[8 -4;% weight-------------------
     6 9];

w=inv(w_z)*z*inv(x) % target weight-----------------
