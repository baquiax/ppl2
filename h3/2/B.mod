reset;

var x1 integer >= 0, <= 1;
var x2 integer >= 0, <= 1;
var x3 integer >= 0, <= 1;
var x4 integer >= 0, <= 1;
var x5 integer >= 0, <= 1;

maximize z: 11*x1 + 10*x2 + 12*x3 + 13*x4 + 9*x5;

subject to r1: 10*x1 + 8*x2 + 9*x3 + 12*x4 + 7*x5 <= 35;
subject to r2: x1 + x4 <= 1;
subject to r3: x1 + x2 <= 1;
subject to r4: -x4 + x5 <= 0;

# Ramificación
# Ramificación
subject to r5: x5 <= 0;

solve;

option display_eps 1e-10;

display z, x1, x2, x3, x4, x5;

# Result
# 
# z = 35
# x1 = 0
# x2 = 1
# x3 = 1
# x4 = 1
# x5 = 0