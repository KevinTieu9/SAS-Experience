libname pg1 "/home/u58811620/CISP357/data";

proc sort data=pg1.np_largeparks out=park_clean 
          dupout=park_dups nodupkey;
    by _all_;
run;