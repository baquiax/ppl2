reset;
# Reducción de costos de infraestructura

option solver cplex ; # Programación Entera

option cplex_options  'sensitivity';

# Definiendo conjuntos
set V; # Tipos de máquinas
set R; # Tipos de recursos a utilizar


# Definiendo parámetros
param c{V}; # costo por tipo de máquina
param d{R}; # demanda por tipo de recurso

param q{V, R}; # cantidad de recurso R por tipo de máquina V

# Definiendo variables
# Cantidad X de máquinas a elegir por tipo V, 
# + restricción de No negatividad
var x{V} integer >= 0; 

minimize costo:
    sum{v in V} c[v]*x[v]
;

subject to demandas {r in R}:
    sum{v in V} x[v] * q[v, r] >= d[r]
;

data "project.dat";

option presolve 0;

solve;

option omit_zero_rows 1;

display d;

display x;

display demandas.slack;

display costo;