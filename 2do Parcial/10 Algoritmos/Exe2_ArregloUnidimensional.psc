Proceso Arreglo_unidimencional
	
	Definir opc,opc2,i,n,j Como Entero;
	Definir suma,valores,cuadrado,cubo,resta,raizcuadrada,res,m Como Real;
	definir repprog como caracter;
	Dimension valores[100];
	Dimension cuadrado[100];
	Dimension raizcuadrada[100];
	Dimension cubo[100];
	Dimension resta[100];
	opc <- 0; suma <- 0.0; res <- 0.0; m <- 0.0;n<-0;
	repprog <- "yes";
	
	Repetir
		
	
	
	Escribir 'Menu';
	Escribir '';
	Escribir '1) Introducir datos';
	Escribir '2) Mostrar datos';
	Escribir '3) Modificar datos';
	Escribir '4) Operaciones';
	
	Leer opc;
	
	segun opc hacer
		1:
			
				Escribir '1) Almacenar datos';
				Escribir 'Ingresa el valor maximo de numeros';
				Leer n;
				Si n>=1 Entonces
					Para i<-1 Hasta n Hacer
						Escribir 'Ingrese el ',i,' numero';
						Leer m;
						valores[i] <- m;
					FinPara
					Para i<-1 Hasta n Hacer
						Escribir 'Dato: ',i,' valor: ',valores[i];
					FinPara
				SiNo
					Escribir 'Ingresa un numero mayor a 0';
				FinSi
			
			
			2:	
				
				Escribir ' ';	
				Escribir '2) Mostrar datos';
				Escribir ' ';
				si n<=0 entonces
					Escribir "Aun no hay datos definidos.";
					Escribir "Introduce datos con la opcion 1 del menu...";
				sino 	
					Si n>=1 Entonces
						Para i<-1 Hasta n Hacer
							Escribir 'Dato: ',i,' valor: ',valores[i];
						FinPara
					SiNo
						Escribir 'Ingresa un numero mayor a 0';
					FinSi
				finsi
				
			3:	
				si n<=0 entonces
					Escribir "Aun no hay datos definidos.";
					Escribir "Introduce datos con la opcion 1 del menu...";
				sino
				
							Escribir ' ';	
							Escribir '3) Modificar datos';
							Escribir ' ';	
							Escribir 'Escriba el numero de dato que desee modificar';
							Leer m;
							Mientras m<=0 o m>n  Hacer
								escribir 'Solo hay datos definidos entre 1 y ', n;
								Escribir 'Escriba el numero de dato valido que desee modificar';
								Leer m;
							FinMientras
											
							
							Escribir 'Valor actual del dato ',m,' es: ', valores[m];
							Escribir 'Ingrese el nuevo valor del dato ',m,' ';
							Leer j;
							valores[m] <- j;
							
								
							Escribir ' ';	
							Para i<-1 Hasta n Hacer
								Escribir 'Dato: ',i,' valor: ',valores[i];
							FinPara
				finsi
			
				
				
				
				
		4:	
			si n<=0 entonces
				Escribir "Aun no hay datos definidos.";
				Escribir "Introduce datos con la opcion 1 del menu...";
			sino
						Escribir 'Operaciones';
						Escribir '';
						Escribir '1) Cuadrado de los datos';
						Escribir '2) Raiz Cuadrada de los datos';
						Escribir '3) Cubo de los datos';
						Escribir '4) Restar el cubo del cuadrado de los Datos';	
						Leer opc2;
						Segun opc2  Hacer		
							1:
										Escribir '* Cuadrado de los datos';
										Escribir ' ';
										Escribir 'Dato:  Valor:  Cuadrado:' ;
										Para i<-1 Hasta n Hacer
											cuadrado[i]<-valores[i]*valores[i];
											Escribir i,'       ',valores[i],'       ', cuadrado[i] ;
										FinPara
							2:
										Escribir '* Raiz Cuadrada de los datos';
										Escribir ' ';
										Escribir 'Dato:  Valor:  Raiz Cuadrada:' ;
										Para i<-1 Hasta n Hacer
											raizcuadrada[i]<-raiz(valores[i]);
											Escribir i,'       ',valores[i],'       ', raizcuadrada[i] ;
										FinPara
							3:
										Escribir '* Cubo de los datos';
										Escribir ' ';
										Escribir 'Dato:  Valor:  Cubo:' ;
										Para i<-1 Hasta n Hacer
											cubo[i]<-(valores[i])^3;
											Escribir i,'       ',valores[i],'       ', cubo[i] ;
										FinPara
										
							4:
										Escribir '* Restar el cubo, del cuadrado de los datos';
										Escribir ' ';
										Escribir 'Dato:  Valor: Cuadrado: - Cubo: Resta:' ;
										Para i<-1 Hasta n Hacer
											cubo[i]<-(valores[i])^3;
											cuadrado[i]<-valores[i]*valores[i];
											resta[i]<-cuadrado[i]-cubo[i];
											Escribir i,'       ',valores[i],'       ',Cuadrado[i],'   -   ',Cubo[i],'       ', resta[i] ;
										FinPara
								
							De Otro Modo:
								Escribir 'Opcion invalida';
							finsegun	
			finsi			
		
		FinSegun
		esperar tecla;
		Borrar Pantalla;
		
		
	Hasta Que repprog="no"
		
FinProceso

