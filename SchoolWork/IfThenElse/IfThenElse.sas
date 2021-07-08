***********************************************************;
*  LESSON 4, PRACTICE 7                                   *;
*    a) Submit the program and view the generated output. *;
*    b) In the DATA step, use IF-THEN/ELSE statements to  *;
*       create a new column, ParkType, based on the value *;
*       of Type.                                          *;
*       NM -> Monument                                    *;
*       NP -> Park                                        *;
*       NPRE, PRE, or PRESERVE -> Preserve                *;
*       NS -> Seashore                                    *;
*       RVR or RIVERWAYS -> River                         *;
*    c) Modify the PROC FREQ step to generate a frequency *;
*       report for ParkType.                              *;
***********************************************************;
libname pg1 "/home/u58811620/CISP357/data";

data park_type;
	set pg1.np_summary;
	*Add IF-THEN-ELSE statements;
	
	IF Type="NM" THEN ParkType="Monument";
	ELSE IF Type="NP" THEN ParkType="Park";
	ELSE IF Type="NS" THEN ParkType="Seashore";
	ELSE IF Type="NPRE" OR Type="PRE" OR Type="PRESERVE" THEN ParkType="Preserve";
	ELSE ParkType="River";
run;

proc freq data=park_type;
	tables ParkType;
run;
