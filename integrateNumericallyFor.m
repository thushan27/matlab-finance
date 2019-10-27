function [r ]= integrateNumericallyFor(f,a,b,N)
h = (b -a )/ N ;
current = 0;
for n = 1:N
s = a + (n - 0.5) * h;
current = current + f(s);
end
result = current;
r = h * result;
end