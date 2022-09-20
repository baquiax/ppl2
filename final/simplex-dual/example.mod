var x1 >= 0;
var x2 >= 0;
var x3 >= 0;


minimize z: 2*x1 + 3*x2 + 4*x3;    
subject to r1: x1 + 2*x2 + x3 >= 3;
subject to r2: 2*x1 - x2 + 3*x3 >= 4;

solve; 

display z, x1, x2;