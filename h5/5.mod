var x1 >= 0;
var x2 >= 0;
var x3 >= 0;


maximize z: -4*x1 - 6*x2 - 5*x3;
subject to r1: 2*x1 + 3*x3 >= 3;
subject to r2: 3*x2 + 2*x3 >= 6;


solve; 

display z, x1, x2, x3;