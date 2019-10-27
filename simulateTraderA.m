function [ finalBankBalance] = simulateTraderA(chargeToCustomer,K,T,S0,...
r,mu, sigma , nPaths , nSteps)

dt = T/nSteps; 

paths = generateBSPaths( T, S0, mu, sigma, nPaths, nSteps );

[~,delta] = blackScholesCallPrice(K,T,S0,r,sigma);
stockQuantity = delta;
cost = stockQuantity .* S0;
bankBalance = chargeToCustomer-cost;

for t=1:(nSteps-1)    
    
    bankBalance = exp(r*dt)*bankBalance;
    
end

S = paths(:,nSteps); 
liability = max(S-K, 0);
bankBalance = exp(r*dt)*bankBalance - liability;
finalBankBalance = bankBalance;

end
