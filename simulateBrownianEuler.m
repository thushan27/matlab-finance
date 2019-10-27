function [ S ] = simulateBrownianEuler( S0, dW, dt, nSteps, mu, sigma )

currS = S0;
nPaths = size( dW, 1);
S = zeros(nPaths, nSteps );
for i=1:nSteps
 currDW = dW(:,i);
 S(1:end,i) = currS + mu*currS*dt + sigma*currS.*currDW;
 currS = S(:,i);
end
end