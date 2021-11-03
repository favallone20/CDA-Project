function y = NL_motorcycle_system(in)
%NL_MOTORCYCLE_SYSTEM Summary of this function goes here
%   Detailed explanation goes here
x1 = in(1)
x2 = in(2)
u = in(3) 
m = 230
J = 2100
l = 1
g= 9.81
x_dot = [x2; (-m*g*l*cos(x1))/(m*l^2+J-m*l^2*(sin(x1))^2)]+[0; l*sin(x1)/(m*l^2+J-m*l^2*(sin(x1))^2)]*u
y = [x_dot; x1]
end

