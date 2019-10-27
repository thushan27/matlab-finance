function result = answerProblem3b()
function r = integrand ( x )
r = x.^2 - 2.*x + 2;
end
NSteps = 1000;
result = integrateNumerically ( @integrand , 1, 3, NSteps );
end