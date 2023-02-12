Proceso Matriz_Transpuest
	Definir i,j,n,m como entero ;
	definir A,T como real;
	definir repetir1 como caracter;
	
	Dimension A(100,100);	
	Dimension T(100,100);
	repetir1<-"si";
	
	repetir 
	Escribir "! Matriz Transpuesta de tamaño NxM !";
	Escribir " ";
	Escribir "Indica el numero de filas de la matriz:";
	Leer n;
	Escribir "Indica el numero de Columnas de la matriz:";
	Leer m;
	
	Para i<-1 hasta n hacer
		Para j<-1 hasta m hacer
			A[i,j]<-0;
		FinPara
	finpara
	
	
	
	Para i<-1 hasta n hacer
		Para j<-1 hasta m hacer
			ImprimirA(A,n,m);
			Escribir "Introduce el valor de A[",i,",",j,"]";
			leer A[i,j];
			limpiar pantalla;
			
		FinPara
	finpara
	
	Escribir " ";
	
	
	Para i<-1 hasta n hacer
		Para j<-1 hasta m hacer
			aux <- A[i,j];
			T[j,i] <- A[i,j];
			T[j,i] <- aux;
		FinPara
	finpara
	
	
	
	Escribir "! Matriz Transpuesta de A !";
	ImprimirA(A,n,m);
	Escribir " ";
	ImprimirT(T,n,m);
	esperar tecla;
	Limpiar Pantalla;
hasta que repetir1="no";


Finproceso


SubProceso ImprimirA(A,n,m)
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




SubProceso ImprimirT(T,n,m)
	Escribir " ";
	Escribir "Matriz Transpuesta de A";
	Escribir " ";
	Para k<-1 hasta m hacer
		Escribir sin saltar "| ";
		Para l<-1 hasta n hacer
			Escribir sin saltar T[k,l]," | ";
		FinPara
		Escribir " ";
		
	finpara
	
FinSubProceso