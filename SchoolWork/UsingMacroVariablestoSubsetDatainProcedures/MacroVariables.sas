libname pg1 "/home/u58811620/CISP357/data";

/*Question/Step 1-2 answers*/
proc freq data=pg1.np_species;
	tables Abundance Conservation_Status;
	where Species_ID like "YOSE%" and Category="Mammal";
run;

proc print data=pg1.np_species;
	var Species_ID Category Scientific_Name Common_Names;
	where Species_ID like "YOSE%" and Category="Mammal";
run;

/*Question 3
	There were 16 observations read from the data set PG1.NP_SPECIES.
	WHERE species_Id like 'YOSE%' and (Category='Mammal');*/
	
/*Question/Step 4 Answers

Has same output There were 16 observations read from the data set PG1.NP_SPECIES.
       WHERE Species_ID like 'YOSE%' and (Category='Mammal')*/
%let ParkCode=YOSE;
%let SpeciesCat=Mammal;

proc freq data=pg1.np_species;
	tables Abundance Conservation_Status;
	where Species_ID like "&ParkCode%" and Category="&SpeciesCat";
run;

proc print data=pg1.np_species;
	var Species_ID Category Scientific_Name Common_Names;
	where Species_ID like "&ParkCode%" and Category="&SpeciesCat";
run;
	
/*Question 5: Macros Zion and Bird*/
%let ParkCode=ZION;
%let SpeciesCat=Bird;

proc freq data=pg1.np_species;
	tables Abundance Conservation_Status;
	where Species_ID like "&ParkCode%" and 
	Category="&SpeciesCat";
run;

proc print data=pg1.np_species;
	var Species_ID Category Scientific_Name Common_Names;
	where Species_ID like "&ParkCode%" and 
	Category="&SpeciesCat";
run;

/*Question 6:
	There were 46 observations read from the data set PG1.NP_SPECIES.
    WHERE Species_ID like 'ZION%' and (Category='Bird');*/