function u  = forward_chain(in)
%CHAIN Summary of this function goes here
%   Detailed explanation goes here

m = 230
J = 2100
l = 1
g= 9.81

v = in(1)
x1 = in(2)
LgLf = l*sin(x1)/(m*l^2+J-m*l^2*(sin(x1))^2)
u1 = v/LgLf;
u2 = m*g*l*cos(x1)/(l*sin(x1))
u = u1+u2
end

