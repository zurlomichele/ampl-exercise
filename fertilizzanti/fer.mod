set mat_prim;
set prodotti;

param costo{prodotti} >= 0;
param disp{mat_prim} >= 0;

param composizione{mat_prim, prodotti} >= 0;

var x{prodotti} >= 0;


maximize profitto: 
	sum{j in prodotti} costo[j] * x[j];
	
subject to magazzino {i in mat_prim}:
	sum{j in prodotti} composizione[i, j] * x[j] <= disp[i];
	

 

