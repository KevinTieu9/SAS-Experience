libname pg1 "/home/u58811620/CISP357/data";

title1 'Weather Statistics by Year and Park';

PROC MEANS DATA=pg1.np_westweather mean min max MAXDEC=2;
        VAR Precip Snow TempMin TempMax;
        CLASS Year Name;
RUN;