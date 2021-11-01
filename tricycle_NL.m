function out = tricycle_NL(in)
theta = in(1);
v = in(2);
delta = in(3)
u1 = in(4)
u2 = in(5)

x_dot = v*cos(delta)*cos(theta)
y_dot = v*cos(delta)*sin(theta)
theta_dot = v*sin(delta)
v_dot = u1
delta_dot = u2

out = [theta_dot; v_dot; delta_dot; x_dot; y_dot]

end

