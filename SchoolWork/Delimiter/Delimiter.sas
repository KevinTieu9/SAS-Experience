proc import datafile="/home/u58811620/CISP357/data/np_traffic.dat"
	dbms=dlm
	out=traffic2
	replace;
	
	guessinggrows=3000;
	delimiter="|";
run;