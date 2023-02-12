Proceso Calculo_de_Salario_semanal
	Definir TotalHrs1,Textra1,Salario1 Como Real;
	Escribir 'Calculo Salarial por semana';
	Escribir ' ';
	Escribir 'Ingrese el numero total de horas trabajadas';
	Leer TotalHrs1;
	Si TotalHrs1>40 Entonces
		Textra1 <- TotalHrs1-40;
		Salario1 <- (40*16)+(Textra1*20);
	SiNo
		Salario1 <- (TotalHrs1*16);
	FinSi
	Escribir 'El Salario semanal es: $',Salario1,'.00 M.N.';
FinProceso

