reset;
option solver loqo;
option loqo_options 'iterlim 30 dual', solver loqo;

set items;
var x{i in items};
param C{i in items};
param budget;

maximize f: sum{i in items} (C[i]*log(1 + x[i]) - x[i]);
subject to c: sum{i in items} (x[i]) <= budget;