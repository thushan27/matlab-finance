function testblackScholesCallPrice()
K = 105;
T = 1;
S = 100;
v = 0.15;
r = 0.20;

assert(blackScholesCallPrice(K,T,S,v,r) - (S - K*exp(-r*T)) > 0);

end
