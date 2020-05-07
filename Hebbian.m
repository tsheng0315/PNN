
clc
clear all

%% Batch  Hebbian rule 
input_x=[[-5;-4],[-2;0],[0 ;-1], [0; 1], [3 ;2],[4; 2]] % input x ---------
N=size(input_x,2); %number of input vector
x_mean=[sum(input_x(1,:))/N;sum(input_x(2,:))/N]; % mean of x
zero_mean_x = input_x - x_mean 

w = [-1,0]; % initial weight ------------------------------------------
lr = 0.01; % learning rate---------------------------------------------
sum_delta_w = [0,0 ]; % sum delta weight 

for i=1:N
    disp('updated time:');
    i
    y= w * zero_mean_x(:,i)  % y = wx [-1 0]*[-5 -4].'
    delta_w = lr * y * zero_mean_x(:,i).'  %  Hebbian rule
    sum_delta_w =sum_delta_w+delta_w 

end
  w_new=w + delta_w % updated w



%% sequential Hebbian rule 
input_x=[[-5;-4],[-2;0],[0 ;-1], [0; 1], [3 ;2],[4; 2]] % input x ---------
N=size(input_x,2); %number of input vector
x_mean=[sum(input_x(1,:))/N;sum(input_x(2,:))/N]; % mean of x
zero_mean_x = input_x - x_mean 

w = [-1,0]; % initial weight ------------------------------------------
lr = 0.01; % learning rate---------------------------------------------

sum_delta_w = [0,0 ]; % sum delta weight 


for i=1:N
    disp('updated time:');
    i
    y= w * zero_mean_x(:,i)  % y = wx [-1 0]*[-5 -4].'
    delta_w = lr * y * zero_mean_x(:,i).'  %  Hebbian rule 
    w_new=w + delta_w
end
 % updated 
