function [ payoff ] = computeAsianPayoff( ...
 strike, priceHistory,n )

finalPrice = mean(priceHistory(end-n:end),2);
inMoney = finalPrice>strike;
payoff = inMoney .* (finalPrice-strike);
end