% Code provided by lecture notes. Important function used to help create compute Knockin/Asian payoffs.
% A knockout option with strike K and barrier B and maturity T is an option that pays 0 
% if the stock price is ever above B at the end of the business day. If it reaches time T without
% hitting the barrier, its payooff is given by max(S_T − K, 0), where S_T is the stock price at time T.

function [ payoff ] = computeKnockoutPayoff( ...
 strike, barrier, priceHistory )
knockedOut = max( priceHistory>barrier, [], 2);
notKnockedOut = 1-knockedOut;
finalPrice = priceHistory(:,end);
inMoney = finalPrice>strike;
payoff = inMoney .* notKnockedOut .* (finalPrice-strike);
end
