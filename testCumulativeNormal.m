function testCumulativeNormal()
x=0.3;
assertApproxEqual(cumulativeNormal(-x ),1- cumulativeNormal (x), 0.001);
assertApproxEqual(cumulativeNormal(2),0.975, 0.01);
assertApproxEqual(cumulativeNormal(-20), 0, 0.001);
end