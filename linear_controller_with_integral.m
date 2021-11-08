function out = linear_controller(in)
%LINEAR_CONTROLLER Summary of this function goes here
%   Detailed explanation goes here
ydot = in(1)
y =in(2)
yd_dotdot= in(3)
yd_dot=in(4)
yd = in(5)
z = in(6)
kp = -10
kp2 = -10
ki= +0;
v = kp*(y-yd)+kp2*(ydot-yd_dot)+ki*z;
zdot = y - yd
out = [v; y; zdot]
end

