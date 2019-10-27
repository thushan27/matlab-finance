function [r] = integrateBySimpsonRule( f, a, b, N )
n = N-1;
h = (b-a)/n;
s1 = a + h*(1:2:n-1);
s2 = a + h*(2:2:n-2);
total = f(a)+f(b);
for x = s1
    total = total + 4*f(x);
end
for x = s2
    total = total + 2*f(x);
end
r = (1/3)*h*(total);
end