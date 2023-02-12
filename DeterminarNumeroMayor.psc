Proceso Determinar_numero_mayor
	Definir Num1,Num2,Num3,Nmayor como real;
	Escribir "Determinar el Numero Mayor";
	Escribir "Introduce Num1";
	Leer Num1;
	Escribir "Introduce Num2";
	leer Num2;
	Escribir "Introduce Num3";
	Leer Num3;
	Si Num1>=Num2 Entonces;
		   Nmayor<- Num1;
	    Sino 
			Nmayor <- Num2;
		
	FinSI	
	Si Num3>Nmayor entonces;
		
		Nmayor<- Num3;
		
	FinSi
Escribir  "El numero mayor es:", Nmayor;
FinProceso
