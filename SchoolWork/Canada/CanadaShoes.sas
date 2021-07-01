data canadashoes;

set sashelp.shoes;
	where region="Canada";
    Profit=Sales-Returns;
run;

proc print data=canadashoes;
run;