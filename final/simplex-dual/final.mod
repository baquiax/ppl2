var x1 >= 0;
var x2 >= 0;


minimize z: 5*x1 + 7*x2;    
subject to r1: 2*x1 + 3*x2 >= 42;
subject to r2: 3*x1 + 4*x2 >= 60;
subject to r3: x1 + x2 >= 18;

solve; 

display z, x1, x2;