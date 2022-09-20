reset;

var x1  >= 0;
var x2  >= 0;

minimize z: -1*x1 - 0.64*x2;
subject to r1: 50*x1 + 31*x2 <= 250;
subject to r2: 3*x1 - 2*x2 <= -4;
subject to r3: x2 <= 8;

solve;

display z, x1 ,x2;

