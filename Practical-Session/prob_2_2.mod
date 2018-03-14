reset;
option solver loqo;
option loqo_options 'iterlim 30 dual', solver loqo;
var x1 >= 0;
var x2 >= 0;
let x1 := 0.5;
let x2 := 0.5;

minimize f: (1-x1)^2 + 100*(x2-(x1)^2)^2 