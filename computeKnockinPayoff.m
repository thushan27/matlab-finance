function [ payoff ] = computeKnockinPayoff( ...
 strike, barrier, priceHistory )
knockedIn = max( priceHistory>barrier, [], 2);
finalPrice = priceHistory(:,end);
inMoney = finalPrice>strike;
payoff = inMoney .* knockedIn .* (finalPrice-strike);
end