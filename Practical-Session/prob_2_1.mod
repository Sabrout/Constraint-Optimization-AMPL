reset;
option solver loqo;
option loqo_options 'iterlim 30 dual', solver loqo;
var x1 >= 0;
var x2 >= 0;

minimize f: 4*(x1)^2 + 7*(x2-4)^2 - 3*x1 + 4*x2;