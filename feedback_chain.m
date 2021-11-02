function u2 = feedback_chain(x1)
%FEEDBACK_CHAIN Summary of this function goes here
%   Detailed explanation goes here
m = 100
J = 10
l = 1
g= 9.81
Lf2h = -m*g*l*cos(x1)/(m*l^2+J-m*l^2*(sin(x1))^2)
LgLfh = l*sin(x1)/(m*l^2+J-m*l^2*(sin(x1))^2)
u2 = -Lf2h/LgLfh
end

