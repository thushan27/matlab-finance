% Integrates a function using the rectangle rule

function [r ]= integrateNumerically (f ,a ,b ,N)
h = (b -a )/N ;
s = a + ((1:N) - 0.5) * h;
r = h * sum ( f (s) );
end
