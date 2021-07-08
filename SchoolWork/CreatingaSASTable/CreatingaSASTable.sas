libname pg1 "/home/u58811620/CISP357/data";

data eu_occ2016;
set pg1.eu_occ;
where YearMon like "2016%";
format Hotel ShortStay Camp comma17.;
drop geo;
run;