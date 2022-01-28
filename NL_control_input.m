function u = NL_control_input(in)

%NL_control_input

% This function defines the NL control input to apply starting from the
% linearized control input v.

% Input ->in = [v, x1] (v linear control input; x1 = ϕ)
% Output-> y = u (NL control input)

m = 230 % kg
J = 2100 % kg*m^2
l = 1 % m
g= 9.81 % m/s^2

v = in(1) 
x1 = in(2)
LgLf = l*sin(x1)/(m*l^2+J-m*l^2*(sin(x1))^2)
u1 = v/LgLf;
u2 = m*g*l*cos(x1)/(l*sin(x1))
u = u1+u2
end
