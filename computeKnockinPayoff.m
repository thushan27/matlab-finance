% A knockin option with strike K and barrier B and maturity T is an option that pays 0 
% if the stock price is ever below B at the end of the business day. If it reaches time T without
% falling below the barrier, its payoff is given by max(S_T − K, 0), where S_T is the stock price at time T.

function [ payoff ] = computeKnockinPayoff( ...
 strike, barrier, priceHistory )
knockedIn = max( priceHistory>barrier, [], 2);
finalPrice = priceHistory(:,end);
inMoney = finalPrice>strike;
payoff = inMoney .* knockedIn .* (finalPrice-strike);
end
