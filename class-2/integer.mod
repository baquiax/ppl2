reset;

option solver cplex;

var x1 integer >= 0;
var x2 integer >= 0;

maximize z: 8*x1 + 5*x2;

subject to r1: x1 + x2 <= 6;
subject to r2: 9*x1 + x2*5 <= 45;

solve;

display z, x1, x2;