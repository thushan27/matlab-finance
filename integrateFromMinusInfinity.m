% Code provided by lecture notes
% Integrates a function between -infinity to x using the rectangle rule

function [ result ] = integrateFromMinusInfinity(f,x,N)
a = 0;
b = 1;
h = (b -a )/ N;
s = a + ((1: N) - 0.5).*h;
fValues = s.^(-2).*f(x + 1 - 1./s);
integral = h * sum ( fValues );
result = integral ;
end
