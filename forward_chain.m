function u1  = forward_chain(in)
%CHAIN Summary of this function goes here
%   Detailed explanation goes here
m = 100
J = 10
l = 1
g= 9.81
x1 = in(1)
v = in(2)
LgLf = l*sin(x1)/(m*l+J-m*l^2*(sin(x1))^2)
u1 = v*1/LgLf;
end

