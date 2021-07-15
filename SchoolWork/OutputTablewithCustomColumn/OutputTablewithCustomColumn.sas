libname pg1 "/home/u58811620/CISP357/data";

proc means data=pg1.np_westweather noprint;
	where Precip ne 0;
	var Precip;
	class Name Year;
	output out=rainstats(where=(_type_=3)) n=RainDays sum=TotalRain;
run;

title1 "Rain Statistics by Year and Park";

proc print data=rainstats noobs label;
	var Name Year RainDays TotalRain;
	label Name="Park Name" RainDays="Number of Days Raining" 
		TotalRain="Total Rain Amount(inches)";
run;

title;