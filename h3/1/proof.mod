reset;

option solver cplex;

# Relajación de Xs
var x1 integer >= 0, <= 1;
var x2 integer >= 0, <= 1;
var x3 integer >= 0, <= 1;
var x4 integer >= 0, <= 1;

maximize z: 8*x1 + 11*x2 + 6*x3 + 4*x4;

subject to r1: 5*x1 + 7*x2 + 4*x3 + 3*x4 <= 14;

solve;

display z, x1, x2, x3, x4;