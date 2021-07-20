libname pg1 "/home/u58811620/CISP357/data";

%let outpath=/home/u58811620/CISP357/output;

proc export data=pg1.storm_final
outfile="&outpath/storm_final.csv"
dbms=csv replace;

run;  