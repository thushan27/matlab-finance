function[positive, negative] = Quadratic(a,b,c)
positive = (-b+sqrt(b^2 - 4*a*c))/2*a;
negative = (-b-sqrt(b^2 - 4*a*c))/2*a;
end
