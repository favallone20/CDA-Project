function out = FBL_IO(in)
v1 = in(1)
v2 = in(2)
v = in(3)
delta = in(4)

Tinv = [1 0; sin(delta) v*cos(delta)].'
out = Tinv*[v1; v2];
end

