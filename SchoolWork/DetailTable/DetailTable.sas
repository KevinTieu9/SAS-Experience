libname pg1 "/home/u58811620/CISP357/data";

/*countrylist has been changed to GeoCountryList to reflect the change of what is in the table by only keeping Geo and Country Variables*/

proc sort data=pg1.eu_occ(keep=Geo Country) out=GeoCountryList
          nodupkey;
    by Geo Country;
run;