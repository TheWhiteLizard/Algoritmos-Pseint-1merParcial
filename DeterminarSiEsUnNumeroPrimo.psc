Proceso Determinar_si_es_Numero_Primo
	Definir Num1,A, B Como Entero;
	Escribir "Ingresa el Numero";
	leer Num1;
	A<-2;
	B<-0;
	
	Mientras A<Num1 Hacer
		Si (Num1 mod A) =0 entonces B<-B+1;
		FinSi
		
		A<-A+1;
	
	FinMientras
	
	Si B>=1 Entonces
		Escribir "El numero ",Num1," No es Primo";
	SiNo
		Escribir "El numero ",Num1," Es Primo";
	FinSi
	
FinProceso
