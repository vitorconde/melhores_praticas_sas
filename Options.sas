options sastrace='d,,,' sastraceloc=saslog;

/*data IFRS17DR.DATA_iris_POSTGRES;*/
/*	set SASHELP.IRIS;*/
/*run;*/

/*data XPTO.IRIS;*/
/*	set IFRS17DR.DATA_iris_POSTGRES;*/
/*run;*/

data IFRS17DR.DATA_iris_POSTGRES_8;
	set IFRS17DR.DATA_iris_POSTGRES;
run;
