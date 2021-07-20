libname pg1 "/home/u58811620/CISP357/data";

%let outpath=/home/u58811620/CISP357/output/;

ODS RTF FILE="&outpath/ParkReport.rtf" style=Journal STARTPAGE=NO;

options nodate;
ods noproctitle;

title "US National Park Regional Usage Summary";

proc freq data=pg1.np_final;
    tables Region /nocum;
run;

proc means data=pg1.np_final mean median max nonobs maxdec=0;
    class Region;
    var DayVisits Campers;
run;

ods rtf style=SASDOCPRINTER;
title2 'Day Visits vs. Camping';
proc sgplot data=pg1.np_final;
    vbar  Region / response=DayVisits;
    vline Region / response=Campers ;
run;
title;

ods proctitle;
options date;
ODS RTF CLOSE;