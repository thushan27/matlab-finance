% Function computes the product of all the elements in a vector

function [total] = myProd(x)
total = 1;
for j =1:length(x)
total = total*x(j);
end
end
