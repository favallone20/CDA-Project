function v = linear_controller(in)
%LINEAR_CONTROLLER Summary of this function goes here
%   Detailed explanation goes here
ydot = in(1)
y =in(2)
yd_dotdot= in(3)
yd_dot=in(4)
yd = in(5)
kp = -100
v = kp*(y-yd)+kp*(ydot-yd_dot)+yd_dotdot;
end

