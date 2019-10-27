function [finalBankBalance] = simulateStopLoss(chargeToCustomer,K,T,S0,...
r,mu, sigma , nPaths , nSteps)

dt = T/nSteps; 

paths = generateBSPaths( T, S0, mu, sigma, nPaths, nSteps );

[~,delta] = blackScholesCallPrice(K,T,S0,r,sigma); 
stockQuantity = delta; 
cost = stockQuantity .* S0; 
bankBalance = chargeToCustomer-cost;

for t=1:(nSteps-1)    
    S = paths(:,t);    
    if S>K
        newStockQuantity = 1;
    else 
        newStockQuantity = 0;
    end
    stockQuantity = newStockQuantity;
    cost = stockQuantity.* S;    
    bankBalance = exp(r*dt)*bankBalance - cost;
    
end


S = paths(:,nSteps);
stockValue = stockQuantity .* S;
liability = max(S-K, 0);
bankBalance = exp(r*dt)*bankBalance + stockValue - liability;
finalBankBalance = bankBalance;

end
