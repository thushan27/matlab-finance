% Converts Polar co-ordinates to Cartesian co-ordinates
function [ x , y ] = polarToCartesian ( r , theta )
x = r * cos ( theta );
y = r * sin ( theta );
end
