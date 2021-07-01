proc import datafile="/home/u58811620/CISP357/data/storm_damage.tab"
	dbms=tab 
	out=storm_damage_tab
	replace;
run;