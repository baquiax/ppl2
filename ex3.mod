# Example without data, only model

var x1 >= 0;
var x2 >= 0;

# Define sets to be used in the general problem, changing this will impact
# the result of the problem

set I={"1", "2"}; # Product set
set J={"a", "b"}; # Raw material set

# Define parameters
param p{I}; # p = profit, a "p" per every I
param c{J}; # c = capacity, one "c" per every J

param a{I,J}; # consumption tha the product "J" needs of the material "J"

# Define vars
var x{I} >= 0; # each "x" represents the cost of each product "I"

# Function
maximize profit: sum{i in I} p[i]*x[i];

# Restrictions of maximum material to

subject to capacities {j in J}:
    sum{i in I} a[i,j]*x[i] <= c[j]
;

data "ex3.dat";

solve;

display profit, x;