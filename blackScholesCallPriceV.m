% A function that computes the price of a call option using the Black-Scholes formula

function [CallOption] = blackScholesCallPriceV(K,T,S,v,r)

d1 = (log(S/K) + (r + (v.^2)./2).*T)./v.*sqrt(T);
d2 = (log(S/K) + (r - (v.^2)./2).*T)./v.*sqrt(T);

CallOption = S.*normcdf(d1) - K.*exp(-r.*T).*normcdf(d2);

end
