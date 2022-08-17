# Declaración de variables y restricción de no negatividad
var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;

# Función objetido nombrada como Z, ya que no hay más contexto
maximize z: 50*x1 + 120*x2 + 40*x3 + 80*x4;

# Restricciones de 1 al 4
subject to r1: 2*x1 + x2 + x3 <= 450;
subject to r2: 3*x2 + x3 + x4 <= 180;
subject to r3: 4*x1 + x3 <= 400;
subject to r4: x1 + x2 + x4 <= 100;

solve;

display z, x1, x2, x3, x4;