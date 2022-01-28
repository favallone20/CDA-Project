function y = NL_motorcycle_system(in)

%NL_MOTORCYCLE_SYSTEM

% This function represents the NL system in the state space form.
% Input ->in = [x1, x2, u] (x1 = ϕ ; x2 = ϕ_dot; u is the NL control input)
% Output-> y = x_dot ([x1_dot; x2_dot])

x1 = in(1)
x2 = in(2)
u = in(3) 
m = 230 % kg
J = 2100 % kg*m^2
l = 1 % m
g= 9.81 % m/s^2
x_dot = [x2; (-m*g*l*cos(x1))/(m*l^2+J-m*l^2*(sin(x1))^2)]+[0; l*sin(x1)/(m*l^2+J-m*l^2*(sin(x1))^2)]*u
y = [x_dot]
end

