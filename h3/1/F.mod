reset;

var x1  >= 0, <= 1;
var x2  >= 0, <= 1;
var x3  >= 0, <= 1;
var x4  >= 0, <= 1;

maximize z: 8*x1 + 11*x2 + 6*x3 + 4*x4;

subject to r1: 5*x1 + 7*x2 + 4*x3 + 3*x4 <= 14;

# Restricciones de acotamiento y ramificación
subject to r2: x3 >= 1;
subject to r3: x2 <= 0;

solve;

display z, x1, x2, x3, x4;

# Result
#
# z = 18
# x1 = 1
# x2 = 0
# x3 = 1
# x4 = 1
