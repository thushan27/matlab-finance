function [ x , y ] = polarToCartesian ( r , theta )
x = r * cos ( theta );
y = r * sin ( theta );
end