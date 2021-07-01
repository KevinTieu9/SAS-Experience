libname pg1 "/home/u58811620/CISP357/data";


/*Answer for 1-2
	There are 8 observations
	The preserves uses PRE, NPRE, and PRESERVE*/
proc print data=pg1.np_summary;
    var Type ParkName;
    /*Add a WHERE statement;*/
    where ParkName like '%Preserve%';
run;