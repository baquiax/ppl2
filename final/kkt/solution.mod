var x1 >= 0;
var x2 >= 0;

minimize z: -3*x1 - 5*x2;
subject to r1: x1 <= 4;
subject to r2: 2*x2 <= 12;
subject to r3: 3*x1 + 2*x2 <= 18;

solve;

display z, x1, x2;