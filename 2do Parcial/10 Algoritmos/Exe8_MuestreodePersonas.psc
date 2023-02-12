Proceso Muestreo_de_personas
	
	Definir i,j,n,nnino,njoven,nadulto,nadultoM Como Entero;
	Definir persona,nino,joven,adulto,adultoM,sumanino,sumajoven,sumaadulto,sumaadultoM Como Real;
	definir repprog,azar1 como caracter;
	Dimension persona[100,100];
	Dimension nino[100,100];
	Dimension joven[100,100];
	Dimension adulto[100,100];
	Dimension adultoM[100,100];
	
	Dimension resta[100];
	Dimension multi[100];
	Dimension division[100];
		repprog <- "yes";
	Repetir
		n<-0;nnino<-0;njoven<-0;nadulto<-0;nadultoM<-0;
		sumanino<-0;sumajoven<-0;sumaadulto<-0;sumaadultoM<-0;
		
	
			Escribir 'Promedio de Peso por edades';
			Escribir '';
				Escribir 'Ingresa el numero de personas del muestreo';
				Leer n;
				Si n>=1 Entonces
					Para i<-1 Hasta n Hacer
						Escribir 'Introduzca Datos de la Persona ',i;
						Escribir 'Edad:';
						Leer persona[i,1];
						
						si persona[i,1]>=0 y  persona[i,1]<13 entonces 
							nnino<-nnino+1;
							nino[nnino,1]<-persona[i,1];
							Escribir 'Peso:';
							Leer nino[nnino,2];
							
						sino 	
							si persona[i,1]>=13 y  persona[i,1]<30 entonces 
								njoven<-njoven+1;
								joven[njoven,1]<-persona[i,1];
								Escribir 'Peso:';
								Leer joven[njoven,2];
								
							sino 	
								si persona[i,1]>=30 y  persona[i,1]<60 entonces 
									nadulto<-nadulto+1;
									adulto[nadulto,1]<-persona[i,1];
									Escribir 'Peso:';
									Leer adulto[nadulto,2];
								SiNo
									si persona[i,1]>=60  entonces 
										nadultoM<-nadultoM+1;
										adultoM[nadultoM,1]<-persona[i,1];
										Escribir 'Peso:';
										Leer adultoM[nadultoM,2];
									FinSi
								FinSi
							finsi
						FinSi
					FinPara
					
					esperar tecla;
					Borrar Pantalla;
					
					Escribir ' ';
					Escribir "* Promedio de Peso en Muestra:";
					Escribir ' ';
					Escribir "* Niños    Edad    Peso(KG)";
					Para i<-1 Hasta nnino Hacer
						Escribir '  ',i,'        ',nino[i,1],'        ',nino[i,2];
						sumanino<-sumanino+nino[i,2];
					FinPara
					Escribir '  ->Promedio de peso en Niños:',sumanino/nnino;
					
					Escribir ' ';
					Escribir "* Jovenes    Edad    Peso(KG)";
					Para i<-1 Hasta njoven Hacer
						Escribir '  ',i,'        ',joven[i,1],'        ',joven[i,2];
						sumajoven<-sumajoven+joven[i,2];
					FinPara
					Escribir '  ->Promedio de peso en Jovenes:',sumajoven/njoven;
					
					Escribir ' ';
					Escribir "* Adultos    Edad    Peso(KG)";
					Para i<-1 Hasta nadulto Hacer
						Escribir '  ',i,'        ',adulto[i,1],'        ',adulto[i,2];
						sumaadulto<-sumaadulto+adulto[i,2];
					FinPara
					
					Escribir '  ->Promedio de peso en Adultos:',sumaadulto/nadulto;
					
					Escribir ' ';
					Escribir "* AdultosM    Edad    Peso(KG)";
					Para i<-1 Hasta nadultoM Hacer
						Escribir '  ',i,'        ',adultoM[i,1],'        ',adultoM[i,2];
						sumaadultoM<-sumaadultoM+adultoM[i,2];
					FinPara
					Escribir '  ->Promedio de peso en Adultos Mayores:',sumaadultoM/nadultoM;
					
					
					
					
					
				SiNo
					Escribir 'Ingresa un numero mayor a 0';
				FinSi
				
			
			
		esperar tecla;
		Borrar Pantalla;
		
		
	Hasta Que repprog="no"
		
FinProceso

