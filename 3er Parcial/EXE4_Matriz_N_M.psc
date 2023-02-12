
Proceso Suma_de_Matrices
	Definir i,j,n,m,k,l, opcion como entero ;
	definir A,B,C como real;
	definir repetir1 Como Caracter;
	
	k<-0;l<-0;n<-0;m<-0;
	
	Dimension A(100,100);	
	
	
	repetir1<-"si";
	
	repetir
		
		Escribir "! Operacion en Matriz !";
		Escribir " ";
		Escribir " ";
		Escribir "Menu:";
		Escribir "1.-Dimensionar la Matriz N*M.";
		Escribir "2.-Introducir todos los datos.";
		Escribir "3.-Modificar/Introducir valor en posicion n*m.";
		Escribir "4.-Leer valor de un dato en la posicion n*m.";
		Escribir "5.-Mostrar Matriz completa";
		Escribir " ";
		escribir sin saltar "Selecione una opcion: ";
		leer opcion;
		
		si opcion!= 1 entonces 
			
			si opcion!= 6 entonces 
			
					si n<=0 entonces 
					Escribir "Indica el numero de filas: ";
					Leer n;
					Escribir "Indica el numero de columnas: ";
					Leer m;
					Para i<-1 hasta n hacer
						Para j<-1 hasta m hacer
							A[i,j]<-0;
						FinPara
					finpara
				FinSi
			FinSi
			
		FinSi
		
		
	segun opcion hacer
		1:
			Escribir "Indica el numero de filas: ";
			Leer n;
			Escribir "Indica el numero de columnas: ";
			Leer m;
			Para i<-1 hasta n hacer
				Para j<-1 hasta m hacer
					A[i,j]<-0;
				FinPara
			finpara
			ImprimirA(A,n,m,k,l);
			
			
		2:
			limpiar pantalla;
			Para i<-1 hasta n hacer
				Para j<-1 hasta m hacer
					ImprimirA(A,n,m,k,l);
					Escribir "Introduce el valor de A[",i,",",j,"]";
					leer A[i,j];
					limpiar pantalla;
				FinPara
			finpara
			ImprimirA(A,n,m,k,l);
		3:
			ImprimirA(A,n,m,k,l);
			Escribir "Indica la fila a modificar: ";
			Leer k;
			Escribir "Indica la columna a modificar: ";
			Leer l;
			Escribir "Indica el dato de la posicion (",k,",",l,")";
			leer A(k,l);
			ImprimirA(A,n,m,k,l);
			
		4:
			Escribir "Leer un dato en la posicion n*m. ";
			Escribir sin saltar "Indica la fila: ";
			Leer k;
			Escribir sin saltar "Indica la columna: ";
			Leer l;
			Escribir sin saltar "El dato en la posicion A(f,c) es: ",A(k,l);
			
		5:
			ImprimirA(A,n,m,k,l);
		
		
		
		
		
		
	FinSegun
	
	esperar tecla;
	limpiar pantalla;
	hasta que repetir1="no";
Finproceso

SubProceso ImprimirA(A,n,m,k,l)  
	Escribir " ";
	Escribir "Matriz A";
	Escribir " ";
	Para k<-1 hasta n hacer
		Escribir sin saltar "| ";
		Para l<-1 hasta m hacer
			Escribir sin saltar A[k,l]," | ";
		FinPara
		Escribir " ";
	finpara	
FinSubProceso




