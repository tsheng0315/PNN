clc
clear
%% Negative Feedback
% activation
clc 
clear

w=[1,1,0;
   1,1,1];

x=[1;1;0];% input x-------------

wt=transpose(w);
xt=transpose(x);

alpha=0.25; % -------------------


disp('epoch 0');
y=zeros(2,1) % y=[0;0];  output y----------------------------



for i=1:12% iteration------------------
  disp('epoch');
  i
  
  e=x-wt*y
  et=transpose(e)
  we=w*e
  y=y+alpha*w*e
  wty=wt*y
  

end

%Learning
beta=0.1;% beta------------------
w=w+beta*y*et



