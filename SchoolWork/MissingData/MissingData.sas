libname pg1 "/home/u58811620/CISP357/data";

/*Question 1-2:
	There were 101 observations read from the data set PG1.EU_OCC.
       WHERE (Hotel is null) and (ShortStay is null) and (Camp is null);*/
proc print data=pg1.eu_occ;
	where Hotel is missing and ShortStay is missing and Camp is missing;
run;

/*Question 3-4:
	There were 25 observations read from the data set PG1.EU_OCC.
       WHERE Hotel>40000000;
       
    July and August is listed in the report, so 2 months.*/
proc print data=pg1.eu_occ;
	where Hotel > 40000000;
run;