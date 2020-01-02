% Integrates the function sin between [0,1] using the rectangle rule (integrateNumerically)


function result = answerProblem3a()
function r = integrand ( s )
r = sin(s);
end
NSteps = 1000;
result = integrateNumerically ( @integrand , 0, 1, NSteps );
end
