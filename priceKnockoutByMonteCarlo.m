% Code provided by lecture notes.
% We wish to price a discrete up-and-out call option with barrier B, strike K and maturity T where one tests to see 
% if the option has hit the barrier at nSteps evenly spaced times over the lifetime of the option.
% The stock price follows the Black Scholes model with parameters S0, µ, r, σ as usual. We wish to write a function 
% to price the option using Monte Carlo simulations with nPaths paths. The function should also return an estimate of the error.
function [price, errorEstimate]=priceKnockoutByMonteCarlo(...
 strike, barrier, T,...
 S0, r, sigma, ...
 nPaths, nSteps )
% Generate paths in risk neutral measure (mu=r)
priceHistory = generateBSPaths(T,S0,r,sigma,nPaths,nSteps);
payoffs = computeKnockoutPayoff(strike,barrier,priceHistory);
discountedPayoff = exp(-r*T)*payoffs;
price = mean( discountedPayoff );
errorEstimate = std( discountedPayoff )/sqrt(nPaths);
end
