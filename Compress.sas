libname xpto "C:\Users\sas\Downloads\lib_conde";

/* Cria Dados 642 mb*/

data xpto.DATA_A (keep=str);
  length str $1000;
  do i=1 to 650000;
     str = '';
     do j=1 to 1000;
        str = cats(str,'A');
     end;
     output;
  end;
run;

proc contents data=xpto.DATA_A;
run;

data xpto.DATA_COMPRESS(compress=yes);
	set xpto.DATA_A;
run;

proc contents data=xpto.DATA_COMPRESS;
run;
