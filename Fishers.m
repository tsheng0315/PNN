clc
clear all

%% Linear Discriminant Analysis (LDA) Fisher method
% seek most discriminative projection
% tutorial 7-10

w = [-1,5].'% 2 weights---------------------------------------------
w = [2,-3].';% 2 weights---------------------------------------------
%input vector 
x_class1 = [[1;2],[2;1],[3;3]]% input x, class 1---------------------
x_class2 = [[6;5],[7;8]] % input vector, class2---------------------------


N1=size(x_class1,2); % number of input vector in class 1
N2=size(x_class2,2); % number of input vector in class 2


% sample mean for class 1 and class 2 
m1 =[sum(x_class1(1,:))/N1;sum(x_class1(2,:))/N1]  
m2 =[sum(x_class2(1,:))/N2;sum(x_class2(2,:))/N2];

sb = (w.' *(m1 - m2))^2 % sb: between class scatter

%sw: within class scatter
sw1 = 0;
for i=1:N1 % class 1
    sw1 = sw1 + [ w.' * (x_class1(:,i)-m1)  ]^2;   % sw = sum[ w(x-mi)^2 ] [-1 6]*[0 ;2]
end

sw2 = 0;
for i=1:N2 % class 2
    sw2 = sw2 + [ w.' * (x_class2(:,i)-m2)  ]^2 ;  % sw = wx [-1 6]*[0;2]
end
sw = sw1+sw2;
Jw = sb/sw  % find w max Jw; Jw higher-->more separable




