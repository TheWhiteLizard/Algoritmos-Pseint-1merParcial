Proceso Series_Numericas
	
	Definir Calificacion1,SumaCal1,PromCal1 como real;
	Definir n1,num1,ciclo1,inc1,valorinicial1 como entero;
	Definir opcion1,textfin1,numtexto1 como texto;
	textfin1<-"";
	ciclo1<-1;
	escribir "Series numericas";
	
	escribir "Elija el tipo de serie a ejecutar:";
	escribir "";
	escribir "a) 1+3+5+.....+n ";
	escribir "b)2+4+6.......+n ";
	escribir "c)1/1+1/2+1/3+.....1/n ";
	escribir "";
	leer opcion1;
	escribir "Indique numero de repeticiones n :";
	leer n1;
	
	si opcion1="a" entonces 
		
		escribir "Serie de tipo 1+3+5+..+n ";
		inc1<-2;
		num1<-1;
		Repetir
			
			numtexto1 <- CONVERTIRATEXTO(num1);
			numtexto1<- concatenar(numtexto1,"+");
			textfin1 <-concatenar(textfin1,numtexto1);
			num1<-num1+inc1;
			ciclo1<-ciclo1+1;
		Hasta Que ciclo1>n1
		
				
		sino 
			
			si opcion1="b" Entonces
				escribir "Serie de tipo 2+4+6.......+n ";
				inc1<-2;
				num1<-2;
				
				Repetir
					numtexto1 <- CONVERTIRATEXTO(num1);
					numtexto1<- concatenar(numtexto1,"+");
					textfin1 <-concatenar(textfin1,numtexto1);
					
					num1<-num1+inc1;
					ciclo1<-ciclo1+1;
				Hasta Que ciclo1>n1
				
				
				
				
			SiNo
				si opcion1="c" Entonces
					escribir "Serie de tipo 1/1+1/2+1/3+.....1/n ";
					inc1<-1;
					num1<-1;
					
					Repetir
						numtexto1 <- CONVERTIRATEXTO(num1);
						numtexto1<- concatenar("1/",numtexto1);
						numtexto1<- concatenar(numtexto1,"+");
						textfin1 <-concatenar(textfin1,numtexto1);
						
						num1<-num1+inc1;
						ciclo1<-ciclo1+1;
					Hasta Que ciclo1>n1
					
					
					
					
					
				SiNo
					escribir "Opcion invalida... ";
				FinSi
				
				
			FinSi
		
		;
	FinSi
	escribir "";
	escribir "Serie: ",textfin1;

	
	
	
FinProceso
