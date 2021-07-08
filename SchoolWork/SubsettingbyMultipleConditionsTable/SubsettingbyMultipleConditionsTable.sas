libname pg1 "/home/u58811620/CISP357/data";

/*Create a new program.  (10 points)

    Write a DATA step to read the pg1.np_species table and create a new table named fox.
    Note: try creating fox as a permanent table in the CISP357/output folder.

    Include only the rows where Category is Mammal and Common_Names includes Fox in any case.

    Exclude the Category, Record_Status, Occurrence, and Nativeness columns.

	Run the program.*/

data fox;
	set pg1.np_species;
	where Category='Mammal' and upcase(Common_Names) like '%FOX%';
	drop Category Record_Status Occurrence Nativeness;
run;

/*Notice that Fox Squirrels are included in the output table. 
Add a condition in the WHERE statement to exclude rows that include Squirrel. 
Submit the program and verify the results. (10 points)*/

data fox;
	set pg1.np_species;
	where Category='Mammal' and upcase(Common_Names) like '%FOX%'
		and upcase(Common_Names) not like '%SQUIRREL%';
	drop Category Record_Status Occurrence Nativeness;
run;

/*Sort the fox table by Common_Names. (10 points)*/

data fox;
	set pg1.np_species;
	where Category='Mammal' and upcase(Common_Names) like '%FOX%'
		and upcase(Common_Names) not like '%SQUIRREL%';
	drop Category Record_Status Occurrence Nativeness;
run;

proc sort data=fox;
	by Common_Names;
run;