clear all;
close all;
syms s

%% System
A=[0 0;1 0];
B = [1; 0];
C = [0 1];

%% Reachability
Wr = [B A*B];
det(Wr)

%% Observability
Wo = [C; C*A];
det(Wo)
%%
[NumRows NumCols]=size(A);
I = eye(NumRows, NumCols);
%% Pole placement for the reachability
P=[-5; -10]; %% they are the desired poles
k = place(A,B,P)

% %% LQR 
% %If you don't want to use LQR you should comment this section
% Qx = eye(2);
% Qu = eye(1);
% [k,S,P] = lqr(A,B,Qx,Qu)
% det(s*I-A+B*k)
% 
% kr=-1/(C*inv(A-B*k)*B)
% 
% %% Pole placement for the observability
% Pl=[-15,-20]; %%they are the desired poles
% L = place(A', C', Pl);
% L=L.'

