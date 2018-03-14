reset;
option solver loqo;
option loqo_options 'iterlim 30 dual', solver loqo;

var r >= 0;
var s >= 0;

minimize f: 100*r + 50*s;
subject to c1: s <= 100;
subject to c2: 50*r + 250*s <= 100*(r+s);
subject to c3: r+s >= 500;

