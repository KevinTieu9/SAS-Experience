libname pg1 "/home/u58811620/CISP357/data";

data Parks Monuments;
	set pg1.np_summary;
	
	/*Answer 1*/
	where Type in ('NM', 'NP');
	
	/*Answer 2*/
	Campers= sum(OtherCamping, TentCampers, RVCampers, BackcountryCampers);
	format Campers comma20.;
	
	/*Answer 3*/
	if Type='NP' then do Parktype= 'Park';
	output Parks;
	end;
	
	else if Type='NM' then do Parktype='Monument';
	output Monuments;
	end;
	/*Answer 4*/
	keep Reg ParkName DayVisits OtherLodging Campers ParkType;
	
	/*Answer 5
	51 Rows in the Park Table
	
	63 Rows in the Monuments Table
	*/
run;