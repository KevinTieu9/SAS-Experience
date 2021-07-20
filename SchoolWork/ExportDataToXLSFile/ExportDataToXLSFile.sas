libname pg1 "/home/u58811620/CISP357/data";

%let outpath=/home/u58811620/CISP357/output/;
libname xl_lib XLSX "&outpath/storm.xlsx";

data xl_lib.storm_final;
    set pg1.storm_final;
    drop Lat Lon Basin OceanCode;
run;

libname xl_lib clear;