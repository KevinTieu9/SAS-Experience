LIBNAME NP xlsx "/home/u58811620/CISP357/data/np_info.xlsx";
options validvarname=v7;
proc contents data=NP.parks;
run;
libname np clear;