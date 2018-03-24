# Note : code for all cases are the same, only the objective changes
# When running the program, please comment out non-targeted objectives

reset;
option solver loqo;
option loqo_options 'iterlim 30 dual', solver loqo;

param n >= 1;
param x1{1..n};
param x2{1..n};
param y{1..n};
var w1;
var w2;
var b;
param L = 10;

#minimize f: sum{i in 1..n} (w1*x1[i] + w2*x2[i] + b - y[i])^2;
#minimize f: sum{i in 1..n} (w1*x1[i] + w2*x2[i] + b - y[i])^2 + L*abs(w1 + w2);
minimize f1: sum{i in 1..n} (w1*x1[i] + w2*x2[i] + b - y[i])^2 + L*(w1^2 + w2^2);

data prob_4_simple.dat;
solve;
display w1;
display w2;

