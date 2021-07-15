libname pg1 "/home/u58811620/CISP357/data";

title1 'Park Types by Region';

proc freq data=pg1.np_codelookup order=freq;
    tables Type*Region / nocol crosslist;
    where Type not like '%Other%';
run;

title2 'Selected Park Types by Region';

ods graphics on;
ods noproctitle;

proc freq data=pg1.np_codelookup order=freq;
    tables Type*Region / nocol crosslist
    	plots = freqplot (groupby=row scale=grouppercent orient=horizontal);
            where Type in ('National Historic Site', 
    			   'National Monument', 
    			   'National Park');
run;

title;
ods proctitle; 