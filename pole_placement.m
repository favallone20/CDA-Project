clear all;
close all;

syms s
%% System
A = [0 0; 1 0];
B = [1; 0];
C = [0 1];
D = 0;

%% Reachability
Wr = [B A*B];
det(Wr) % Il sistema è raggiungible

%% Observability
Wo = [C; C*A];
det(Wo) % Il sistema è osservabile 
%%
[NumRowsA NumColsA]=size(A);
[NumRowsB NumColsB]=size(B);
I = eye(NumRowsA, NumColsA);
%% Pole placement for the reachability
P=[-5 -10]; %% they are the desired poles
k = place(A,B,P)
kr=-1/(C*inv(A-B*k)*B)

% %% LQR 
% % %If you don't want to use LQR you should comment this section
% Qx = eye(NumColsA);
% Qu = eye(NumColsB);
% [k,S,P] = lqr(A,B,Qx,Qu)
% det(s*I-A+B*k)
% 
% kr=-1/(C*inv(A-B*k)*B)

%% Pole placement for the observability
Pl=[-100 -50]; %%they are the desired poles
L_t = place(A.', C.', Pl);
L=L_t.'


%% LQR 
% %If you don't want to use LQR you should comment this section
% Qx = [20 0; 0 20];
% Qu = eye(NumColsB);
% [L_t,S,Pl] = lqr(A.',C.',Qx,Qu)
% det(s*I-A.'+C.'*L_t)
% L = L_t.'

