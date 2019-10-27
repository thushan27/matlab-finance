function ret = randnMultivariate(omega,n)

ret = chol(omega,'lower')*randn(size(omega,2),n);

end

