Proceso TresFiguras
	Definir n,m,i,j,d,aux,medio Como Real;
	Definir opcion1,linea,repprog Como Caracter;
	repprog<-"yes";
		
Repetir
	linea<-"";	
	Escribir 'Realizar la Impresion de una figura.';
	Escribir 'Seleccione una opcion:';
	Escribir '';
	Escribir "A.- Linea de n numero de *:";
	Escribir "B.- Rectángulo o cuadrado de m*n número de *:";
	Escribir "C.- Rombo de n número de * para la diagonal:";
	Leer opcion1;
	
	Si opcion1='A' Entonces
		Escribir "A.- Linea de n numero de *:";
		Escribir "Tamaño de la linea?";
		Leer n;
		para i<-0 hasta n-1 hacer
			linea<-concatenar (linea,"*");
		FinPara
		escribir linea;
		
		
		
	SiNo
		Si opcion1='B' Entonces
			Escribir "B.- Rectángulo o cuadrado de m*n número de *:";
			Escribir "Tamaño de la base del rectangulo?";
			Leer n;
			Escribir "Tamaño de la altura del rectangulo?";
			Leer m;
			para i<-0 hasta n-1 hacer
				linea<-concatenar (linea,"*");
			FinPara
			para i<-0 hasta m-1 hacer
				escribir linea;
			FinPara
						
		SiNo
			Si opcion1='C' Entonces
				Escribir "Rombo de n número de * para la diagonal:";
				Escribir '¿Tamaño de la diagonal mayor del rombo (debe ser un número impar)?';
				Repetir
					Leer d;
					si d mod 2 = 0 Entonces
						escribir "El tamaño de la diagonal debe ser un numero impar...";
						escribir "Indica el Tamaño de la diagonal: ";
					FinSi
				Hasta Que d mod 2 != 0
				
				para i<-0 hasta d-1 con paso 1 hacer
					
					para aux<-0 hasta d-i con paso 1 hacer
						escribir sin saltar " ";
					finpara
					para j<-0 hasta i con paso 1 hacer
						escribir sin saltar "* ";
					finpara
					escribir " ";
				FinPara
				
				para i<-d-2 hasta 0 con paso -1 hacer
					para aux<-0 hasta d-i con paso 1 hacer
						escribir sin saltar " ";
					finpara
					para j<-i hasta 0 con paso -1 hacer
						escribir sin saltar "* ";
					finpara	
					escribir " ";
				FinPara
						
				
			SiNo
				Escribir 'La opcion ',opcion1,' no es una opcion valida a, b ó c';
			FinSi
		FinSi
	FinSi
	
	
	Esperar Tecla;
	Borrar Pantalla;
Hasta Que repprog="no"
	
FinProceso

