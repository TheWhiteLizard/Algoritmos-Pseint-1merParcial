
	Proceso Practica_Integrador
		Definir opc,i, n Como Entero;
		Definir suma,res, m Como Real;
		suma <- 0.0; res <- 0.0; m <- 0.0;
		Escribir ' Determinar si un numero es perfecto';
				Repetir
					suma <- 0;

					Escribir '';
					Escribir 'Ingresa un numero';
					Leer n;
					Si n>=1 Entonces
						Para i<-1 Hasta n-1 Hacer
							res <- n MOD i;
							Si res=0 Entonces
								suma <- suma+i;
							FinSi
						FinPara
						Si suma=n Entonces
							Escribir 'Es numero  perfecto';
						SiNo
							Escribir 'NO es numero perfecto';
						FinSi
					SiNo
						Escribir "";
						Escribir 'Ingresa un numero entero';

					FinSi
					Escribir "";
					Escribir 'Que opcion desea realizar:';
					Escribir '1) Volver a introducir un numero   2)Terminar proceso   ';
					Leer opc;
				Hasta Que opc=2
FinProceso
