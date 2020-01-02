% An Asian call option with maturity T has its payoff determined by the average price S at the close of the last 
% n days of trading up to and including maturity. The payoff is given by max(S − K, 0)

function [ payoff ] = computeAsianPayoff( ...
 strike, priceHistory,n )

finalPrice = mean(priceHistory(end-n:end),2);
inMoney = finalPrice>strike;
payoff = inMoney .* (finalPrice-strike);
end
