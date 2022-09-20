var x1 >= 0;
var x2 >= 0;
var x3 >= 0;

minimize z: -2*x1 - 2*x2 - 2*x3;
subject to r1: 5*x1 + 2*x2 + 3*x3 <= 10;
subject to r2: x1 + 4*x2 + 2*x3 <= 14;
subject to r3: 2*x1 + x3 <= 9;

solve;

display z, x1, x2, x3;