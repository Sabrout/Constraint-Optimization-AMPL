reset;
option solver loqo;
option loqo_options 'iterlim 30 dual', solver loqo;

var xu >= 0;
var xr >= 0;

maximize f: (7000*log(1 + xr)) + (5000*log(1 + xu)) - xr - xu;
subject to c1: xu + xr <= 200;