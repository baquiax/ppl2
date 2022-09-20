var x1 >= 0;
var x2 >= 0;


maximize z: 0.25*x1 + 0.45*x2;
subject to r1: 4*x1 + 8*x2 <= 1200;
subject to r2: 12*x1 + 8*x2 <= 1920;


solve; 

display z, x1, x2;