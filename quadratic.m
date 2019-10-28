% Finds the roots of a quadratic equation, where a is the coefficient of x^2, b is the coefficient of x and c is a constant

function[positive, negative] = Quadratic(a,b,c)
positive = (-b+sqrt(b^2 - 4*a*c))/2*a;
negative = (-b-sqrt(b^2 - 4*a*c))/2*a;
end
