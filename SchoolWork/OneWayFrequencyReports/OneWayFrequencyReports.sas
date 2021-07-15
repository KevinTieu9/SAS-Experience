libname pg1 "/home/u58811620/CISP357/data";

title1 'Categories of Reported Species';

ods graphics on;
ods noproctitle;

proc freq data=pg1.np_species order=freq;
    tables Category / NOCUM;
run;

title;
ods proctitle;

title2 'in the Everglades';

ods graphics on;
ods noproctitle;

proc freq data=pg1.np_species order=freq;
    tables Category / NOCUM plots=freqplot;
    where Species_ID like "EVER%" and not(Category='Vascular Plant');  
run;

title;
ods proctitle; 