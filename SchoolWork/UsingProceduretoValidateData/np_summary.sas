libname pg1 "/home/u58811620/CISP357/data";


*Question 1-3:
	There isn’t an invalid value that exists for Reg
	
	Based off the valid types in the table NPRE, PRESERVE, and RIVERWAYS are all invalid values for Types.*;

proc freq data = pg1.np_summary;
	tables Reg Type;
run;

*Question 4-5:
	Smallest Observation Peak: 78
	
	Largest Observation Peak: 6 *;

proc univariate data=pg1.np_summary;
	var Acres;
run;


*Question 6:
	Largest: Noatak National Preserve: 6,587,071.39 Acres
	
	Smallest: African Burial Ground National Monument : 0.35 *;
proc sort data=pg1.np_summary;
	by descending Acres ;
run;