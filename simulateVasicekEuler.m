function [ S ] = simulateVasicekEuler( S0, dW, dt, nSteps, a, b )
% a = drift, b = volatility
currS = S0;
nPaths = size( dW, 1);
S = zeros(nPaths, nSteps );
for i=1:nSteps
 currDW = dW(1:end,i);
 S(1:end,i) = a(b - currS)*dt + sigma*currDW;
 currS = S(:,i);
end
end