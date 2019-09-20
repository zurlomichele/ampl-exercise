
set NUTRIMENTI;
set ALIMENTI;

param costo{ALIMENTI} >= 0;
param fabbisogno{NUTRIMENTI};
param apporto{NUTRIMENTI,ALIMENTI} >= 0;

var x{ALIMENTI} >= 0;

minimize costo_totale: 
	sum{j in ALIMENTI} costo[j] * x[j];

subject to FabbisognoPeriodo {i in NUTRIMENTI}:
	sum{j in ALIMENTI} apporto[i, j] * x[j] >= fabbisogno[i];
	
	
