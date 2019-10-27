function testintegrateBySimpsonRule()
assertApproxEqual(1-cos(1), integrateBySimpsonRule(@sin,0,1,1000),0.001);
assertApproxEqual(integrateByTrapeziumRule(@sin,0,1,1000),...
    integrateBySimpsonRule(@sin,0,1,1000),0.001);
end
