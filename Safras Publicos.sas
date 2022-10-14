/* Apenas com salário maior que 2.025.000 */

data WORK.EXTRACT_DT;
	set WORK.ABT_MODELAGEM_V2;
	where AMT_INCOME_TOTAL >= 2025000;
run;

/* Apenas empregados */

data WORK.EXTRACT_DT;
	set WORK.ABT_MODELAGEM_V2;
	where DAYS_EMPLOYED >= 0;
run;



