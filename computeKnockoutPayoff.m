% Code provided by lecture notes. Important function used to help create compute Knockin/Asian payoffs.
function [ payoff ] = computeKnockoutPayoff( ...
 strike, barrier, priceHistory )
knockedOut = max( priceHistory>barrier, [], 2);
notKnockedOut = 1-knockedOut;
finalPrice = priceHistory(:,end);
inMoney = finalPrice>strike;
payoff = inMoney .* notKnockedOut .* (finalPrice-strike);
end
