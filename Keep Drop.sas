data WORK.ABT_MODELAGEM;
	set WORK.ABT_MODELAGEM_V2;
run;


data WORK.ABT_MODELAGEM;
	set WORK.ABT_MODELAGEM_V2;
	where ID = 5008804;
run;



data WORK.ABT_MODELAGEM(keep= ID Target AMT_INCOME_TOTAL CNT_CHILDREN
							  DAYS_BIRTH DAYS_EMPLOYED FLAG_CAR);
	set WORK.ABT_MODELAGEM_V2;
run;



data WORK.ABT_FULL WORK.ABT_MODELAGEM(keep= ID Target AMT_INCOME_TOTAL CNT_CHILDREN
							  DAYS_BIRTH DAYS_EMPLOYED FLAG_CAR);
	set WORK.ABT_MODELAGEM_V2;
run;




data WORK.ABT_FULL WORK.ABT_MODELAGEM;
	set WORK.ABT_MODELAGEM_V2(drop= ID);
run;

data WORK.ABT_FULL WORK.ABT_MODELAGEM(drop= ID);
	set WORK.ABT_MODELAGEM_V2;
run;

data WORK.ABT_MODELAGEM;
	set WORK.ABT_MODELAGEM_V2;
	drop ID Target AMT_INCOME_TOTAL CNT_CHILDREN
		 DAYS_BIRTH DAYS_EMPLOYED FLAG_CAR;
run;


































