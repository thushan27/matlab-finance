% Code provided by lecture notes. Important function used throughout the course for example, pricing Knock-in/Asian options. 
% Function returns a table of stock prices simulated nPaths times (rows) and over T/nSteps intervals (columns). 
% T is the time interval, S0 the stock prices at time 0, drift mu, volatility sigma.

function [ S, times ] = generateBSPaths(T,S0,mu,sigma,nPaths,nSteps)
dt = T/nSteps;
logS0 = log( S0);
eps = randn( nPaths, nSteps );
dlogS = (mu-0.5*sigma^2)*dt + sigma*sqrt(dt)*eps;
logS = logS0 + cumsum( dlogS, 2);
S = exp(logS);
times = dt:dt:T;
end
