proc print data=pg1.storm_summary(obs=50);

/*There were 50 observations read from the data set PG1.STORM_SUMMARY. WHERE MinPressure is null;*/
    where MinPressure is missing; /*same as MinPressure = . */

/*There were 50 observations read from the data set PG1.STORM_SUMMARY. WHERE Type is not null;*/
    where Type is not missing; /*same as Type ne " " */

/*There were 36 observations read from the data set PG1.STORM_SUMMARY. WHERE (MaxWindMPH>=150 and MaxWindMPH<=155);*/
    where MaxWindMPH between 150 and 155;

/*There were 50 observations read from the data set PG1.STORM_SUMMARY. WHERE Basin like '_I';*/
	where Basin like "_I";

/*There were 24 observations read from the data set PG1.STORM_SUMMARY. WHERE name like 'Z%';*/
	where name like "Z%";
run;