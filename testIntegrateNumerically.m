function testIntegrateNumerically()
assertApproxEqual(1-cos(1), integrateNumerically(@sin,0,1,1000),0.001);
end
