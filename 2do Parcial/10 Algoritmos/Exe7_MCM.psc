Proceso Minimo_Comun_Multiplo
	Definir n1, n2, d1, d2, div1,div2,num1,num2, mcm, mcd, div Como Real;
	Definir repetir1 Como Caracter;
	repetir1<-"si";
	
	Repetir
		Escribir "Calculo del Minimo comum Multiplo para la suma de dos Fracciones";
		n1<-0; n2<-0; d1<-0; d2<-0; mcm<-1; div<-1;div2<-1;
		repetir 
			Escribir "ingrese el numerador de la fraccion 1";
			Leer num1;
			Escribir "ingrese el denominador de la fraccion 1";
			Leer div1;
			Escribir "ingrese el numerador de la fraccion 2";
			Leer num2;
			Escribir "ingrese el denominador de la fraccion 2";
			Leer div2;
			si (div1<=0 o div2 <=0) entonces
				escribir "Ningun divisor debe ser menor a cero...";
				escribir "Introduca nuevos valores...";
			FinSi
		Hasta Que (div1>0 && div2 >0)
		n1<-num1;
		n2<-num2;
		d1<-div1;
		d2<-div2;
		mientras d1<>d2 hacer
				si d1>d2 entonces
				d1<-d1-d2;
				sino 
				d2<-d2-d1;
				FinSi
		FinMientras
		mcd<-d1;
		
		mcm<-(div1*div2)/d1;
		n1<-(n1*mcm)/div1;
		n2<-(n2*mcm)/div2;
		escribir " ";
		escribir "El Maximo Comum Multiplo de las fraciones";
		escribir num1,"/",div1," y ",num2,"/",div2;
		escribir "Es: ",mcm;
		escribir "las fraciones con este MCM quedan:";
		escribir n1,"/",mcm," y ",n2,"/",mcm;
		escribir "La suma seria:";
		escribir "(",n1,"+",n2,")/",mcm," finalmente: ",n1+n2,"/",mcm;
		escribir " ";
		
		escribir "Pulse una tecla para repetir el programa...";
		esperar tecla;
	Limpiar Pantalla;
		
	Hasta Que repetir1=='n';
FinProceso