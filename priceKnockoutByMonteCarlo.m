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