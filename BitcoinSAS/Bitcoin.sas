proc import datafile="/home/u58811620/CISP357/data/BitcoinData.xlsx" 
	dbms=xlsx 
	out=Bitcoin 
	replace;
run;

proc contents 
	data=Bitcoin;
run;