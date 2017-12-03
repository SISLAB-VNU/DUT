Y=[8 8 5 5;8 5 8 5];		%input matrix for supervisor data
t=[1 0 0 0;0 1 1 1];
w12=[0.1 0.4;0.3 0.5;0.6 0.1];	%hidden layer's weight matrix for supervisor data
w23=[0.7 0.2 1.3;0.2 0.5 1.1];	%output layer's weight matrix for supervisor data
b2=[-1;-1;-1];
%b2=randn(32,1);
b3=[-1;-1];
%b3=randn(3,1);
n = 0.1;
%Learning rate. If the learning rate is too high, the updated coefficient becomes too large and the cost may not decrease
[w12,w23,b2,b3]=Back_propagation(Y,w12,w23,b2,b3,t,n);	%Learning
