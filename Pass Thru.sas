LIBNAME postg POSTGRES  
	DATABASE=rgfdbname  
	PRESERVE_COL_NAMES=NO  
	PRESERVE_TAB_NAMES=NO  
	DBMAX_TEXT=32000  
	DIRECT_EXE=DELETE  
	DIRECT_SQL=YES  
	PORT=10522 
	SERVER="sas-aap"  
	PORT=10522  
	SCHEMA="ifrs17dr"  
	USER=xxx  
	PASSWORD="xxx" ;

data postg.dado1;
	set sashelp.iris;
run;

proc sql;
create table postg.dado2 as
	select * 
	from sashelp.iris
;
quit;



PROC SQL;
CONNECT TO postgres(user=xxx
				   password="xxxx"
				   server="sas-aap"
				   database=rgfdbname
				   port=10522
				   );
	EXECUTE (create table ifrs17dr.passthru5 as 
					select * 
			 from ifrs17dr.data_iris_postgres) BY postgres;

	SELECT * FROM ifrs17dr.passthru;

DISCONNECT FROM postgres;
QUIT;


