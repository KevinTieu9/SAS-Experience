libname pg1 "/home/u58811620/CISP357/data";

%let outpath=/home/u58811620/CISP357/output/;

ODS EXCEL FILE="&outpath/StormStats.xlsx" STYLE=snow
	OPTIONS(SHEET_NAME='South Pacific Summary');

ods noproctitle;

proc means data=pg1.storm_detail maxdec=0 median max;
    class Season;
    var Wind;
    where Basin='SP' and Season in (2014,2015,2016);
run;

ods excel options(sheet_name='Detail');
proc print data=pg1.storm_detail noobs;
    where Basin='SP' and Season in (2014,2015,2016);
    by Season;
run;

ods proctitle;

ODS EXCEL CLOSE;