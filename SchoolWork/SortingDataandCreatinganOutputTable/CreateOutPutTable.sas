libname pg1 "/home/u58811620/CISP357/data";

proc sort data=pg1.np_summary out=np_sort;
    where Type = "NP";
    by Reg descending DayVisits ;
run;