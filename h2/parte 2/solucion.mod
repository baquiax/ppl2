var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;

maximize cost: 2100*x1 + 2750*x2 + 1900*x3 + 2100*x4;


subject to con1: x1*1 + x2*1 + x3*0	* x4*0 = 50;
subject to con2: x1*0 + x2*0 + x3*1 + x4*1 = 50;
subject to con3: x1*1 + x2*0 + x3*0 + x4*0 <= 35;
subject to con4: x1*0 + x2*1 + x3*0 + x4*0 <= 40;
subject to con5: x1*0 + x2*0 + x3*1 + x4*0 <= 40;
subject to con6: x1*0 + x2*0 + x3*0 + x4*1 <= 45;
subject to con7: x1*1 + x2*0 + x3*1 + x4*0 <= 70;
subject to con8: x1*0 + x2*1 + x3*0 + x4*1 <= 40;
subject to con9: x1*1 + x2*1 + x3*1 + x4*1 = 100;


solve;

display cost, x1, x2, x3, x4;