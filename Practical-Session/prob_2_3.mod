reset;
option solver loqo;
option loqo_options 'iterlim 30 dual', solver loqo;
param pi := 4*atan(1);
var x1 >= 0;
var x2 >= 0;
let x1 := 100;
let x2 := 100;

minimize f: 10 + x1^2 + x2^2 - 10*(cos(2*pi*x1) + cos(2*pi*x2))
