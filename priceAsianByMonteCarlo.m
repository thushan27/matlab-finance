% We wish to price an Asian option with maturity T and strike price.
% The stock price follows the Black Scholes model with parameters S0, strike, µ, r, σ as usual and n
% final days we wish to average out the stock price. We wish to write a function 
% to price the option using Monte Carlo simulations with nPaths paths i.e generateBSPaths function. 
% The function should also return an estimate of the error.

function [price, errorEstimate]=priceAsianByMonteCarlo(...
 strike, T,...
 S0, r, sigma, ...
 nPaths, nSteps,n )
% Generate paths in risk neutral measure (mu=r)
priceHistory = generateBSPaths(T,S0,r,sigma,nPaths,nSteps);
payoffs = computeAsianPayoff(strike,priceHistory,n);
discountedPayoff = exp(-r*T)*payoffs;
price = mean( discountedPayoff );
errorEstimate = std( discountedPayoff )/sqrt(nPaths);
end
