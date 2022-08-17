var x1 >= 0;
var x2 >= 0;

maximize cost: 0.25*x1 + 0.45*x2;

subject to con1: 12*x1 + 8*x2 <= 1920;
subject to con2: 4*x1 + 8*x2 <= 1200; 


solve;

display x1, x2;