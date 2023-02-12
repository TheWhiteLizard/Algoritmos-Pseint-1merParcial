Proceso Operaciones_de_Vectores
	
	Definir opc,i,n,m Como Entero;
	Definir VectorA,VectorB,suma,resta,multi,division Como Real;
	definir repprog,azar1 como caracter;
	Dimension VectorA[100];
	Dimension VectorB[100];
	Dimension suma[100];
	Dimension resta[100];
	Dimension multi[100];
	Dimension division[100];
	opc <- 0;n<-0;
	repprog <- "yes";
	
	Repetir
		
	
	
	Escribir 'Menu Operacion de Vectores';
	Escribir '';
	Escribir '1) Leer datos';
	Escribir '2) Suma';
	Escribir '3) Resta';
	Escribir '4) Multiplicacion';
	Escribir '5) Division';
	
	Leer opc;
	
	
	
	
	segun opc hacer
		1:
			azar1<-"N";
			Escribir '1) Almacenar datos';
			Escribir ' ';
			Escribir 'Generar datos de modo aleatorio? (S/N)';
			Leer azar1;
			si azar1="S" entonces 
				Escribir 'Ingresa el numero de datos en los vectores';
				Leer n;
				Para i<-1 Hasta n Hacer
					VectorA[i] <- azar(10);
					VectorB[i] <- azar(10);
				FinPara
				Escribir ' ';
				Escribir "* Datos en Vector-A:";
				Para i<-1 Hasta n Hacer
					
					Escribir 'Dato: ',i,' : ',VectorA[i];
				FinPara
				Escribir ' ';
				Escribir "* Datos en Vector-B:";
				Para i<-1 Hasta n Hacer
				
					Escribir 'Dato: ',i,' : ',VectorB[i];
				FinPara
				
				
				
				sino
							Escribir 'Ingresa el numero de datos en los vectores';
							Leer n;
							Si n>=1 Entonces
								Para i<-1 Hasta n Hacer
									Escribir 'Ingrese el dato ',i,' del vector A';
									Leer m;
									VectorA[i] <- m;
								FinPara
								Para i<-1 Hasta n Hacer
									Escribir 'Ingrese el dato ',i,' del vector B';
									Leer m;
									VectorB[i] <- m;
								FinPara
										
								Escribir ' ';
								Escribir "* Datos en Vector-A:";
								Para i<-1 Hasta n Hacer
									
									Escribir 'Dato: ',i,' : ',VectorA[i];
								FinPara
								Escribir ' ';
								Escribir "* Datos en Vector-B:";
								Para i<-1 Hasta n Hacer
									
									Escribir 'Dato: ',i,' : ',VectorB[i];
								FinPara
							SiNo
								Escribir 'Ingresa un numero mayor a 0';
							FinSi
				finsi
			
			2:	
				
				Escribir '* Suma de Vectores';
				Escribir ' ';
				Escribir 'Vector1:  Vector2:  Suma:' ;
				Para i<-1 Hasta n Hacer
					suma[i]<-VectorA[i]+VectorB[i];
					Escribir VectorA[i],'         ',VectorB[i],'         ',suma[i] ;
				FinPara
				
			3:	
				si n<=0 entonces
					Escribir "Aun no hay datos definidos.";
					Escribir "Introduce datos con la opcion 1 del menu...";
				sino
				
					Escribir '* Resta de de Vectores';
					Escribir ' ';
					Escribir 'Vector1:  Vector2:  Resta:' ;
					Para i<-1 Hasta n Hacer
						resta[i]<-VectorA[i]-VectorB[i];
						Escribir VectorA[i],'         ',VectorB[i],'         ',resta[i] ;
					FinPara
				finsi
			4:	
				si n<=0 entonces
					Escribir "Aun no hay datos definidos.";
					Escribir "Introduce datos con la opcion 1 del menu...";
				sino
							Escribir '* Multiplicacion de Vectores';
							Escribir ' ';
							Escribir 'Vector1:  Vector2:  Multiplicacion:' ;
							Para i<-1 Hasta n Hacer
								Multi[i]<-VectorA[i]*VectorB[i];
								Escribir VectorA[i],'         ',VectorB[i],'         ',Multi[i] ;
							FinPara	
				finsi
			5:
				si n<=0 entonces
					Escribir "Aun no hay datos definidos.";
					Escribir "Introduce datos con la opcion 1 del menu...";
				sino
					Escribir '* Division de Vectores';
					Escribir ' ';
					Escribir 'Vector1:  Vector2:  Division:' ;
					Para i<-1 Hasta n Hacer
						Division[i]<-VectorA[i]/VectorB[i];
						Escribir VectorA[i],'         ',VectorB[i],'         ',Division[i] ;
					FinPara	
				finsi
						
						
		
		FinSegun
		esperar tecla;
		Borrar Pantalla;
		
		
	Hasta Que repprog="no"
		
FinProceso

