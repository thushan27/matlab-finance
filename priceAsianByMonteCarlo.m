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