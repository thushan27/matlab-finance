% Converts Cartesian co-ordinates to Polar co-ordinates
function [ r , t ] = CartesianToPolar ( x, y)
t = atan(y./x);
r = sqrt(x^2 + y^2);
end
