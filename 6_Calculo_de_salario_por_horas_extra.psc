Proceso Calculo_de_Salario_por_horas_trabajadas
		Definir TotalHrs1,Hnormales1,Hextratot1,Hextradoble1,Hextratriple1,SalarioNormal1,Salariodoble1,Salariotriple1,SalarioporHora1,Salariotot1 como real;
		Hnormales1<-0;
		Hextradoble1<-0;
		Hextratriple1<-0;
		Escribir "Calculo Salarial por total de horas trabajadas";
		Escribir " ";
		Escribir "Ingrese el salario normal por hora: ";
		Leer SalarioporHora1;
		Escribir "Ingrese el numero total de horas trabajadas";
		Leer TotalHrs1;
		
		
		Si TotalHrs1>40 Entonces;
			Hnormales1<-40;
			Hextratot1<-TotalHrs1-40;
			si Hextratot1>8 Entonces
				Hextradoble1<-8;
				Hextratriple1<-Hextratot1-8;
			SiNo
				Hextradoble1<-Hextratot1;
			FinSi
			
		SiNo
			Hnormales1<-TotalHrs1;
			Hextratot1<-0;
		FinSi
		
		SalarioNormal1<-(Hnormales1*SalarioporHora1);
		Salariodoble1<-(Hextradoble1*SalarioporHora1)*2;
		Salariotriple1<-(Hextratriple1*SalarioporHora1)*3;
		Escribir "_____________________________";
		Escribir "Salario tiempo normal .....: $",SalarioNormal1,".00 ";
		Escribir "Salario tiempo Extra Doble.: $",Salariodoble1,".00 ";
		Escribir "Salario tiempo Extra Triple: $",Salariotriple1,".00 ";
		Escribir "_____________________________";
		Salariotot1<-SalarioNormal1+Salariodoble1+Salariotriple1;
		Escribir "Salario Total .............: $",Salariotot1,".00 ";
		
FinProceso
