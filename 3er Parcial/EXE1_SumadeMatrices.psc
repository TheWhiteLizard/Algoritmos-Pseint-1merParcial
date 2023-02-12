Proceso Suma_de_Matrices
	Definir i,j,n,k,l como entero ;
	definir A,B,C como real;
	definir repetir1 Como Caracter;
	k<-0;
	i<-0;
	j<-0;
	n<-0;
	l<-0;
	Dimension A(100,100);	
	Dimension B(100,100);
	Dimension C(100,100);
	repetir1<-"si";
	
	repetir
	Escribir "! Suma de Matrices !";
	Escribir " ";
	Escribir "Indica el tamaño de la matriz:";
	Leer n;
	
	Para i<-1 hasta n hacer
		Para j<-1 hasta n hacer
			A[i,j]<-0;
			B[i,j]<-0;
		FinPara
	finpara
	
	
	
	Para i<-1 hasta n hacer
		Para j<-1 hasta n hacer
			ImprimirA(A,n,k,l);
			Escribir "Introduce el valor de A[",i,",",j,"]";
			leer A[i,j];
			limpiar pantalla;
			
		FinPara
	finpara
	
	Escribir " ";
	
	Para i<-1 hasta n hacer
		Para j<-1 hasta n hacer
			ImprimirB(B,n,k,l);
			Escribir "Introduce el valor de B[",i,",",j,"]";
			leer B[i,j];
			limpiar pantalla;
		FinPara
	finpara
	
	
	Para i<-1 hasta n hacer
		Para j<-1 hasta n hacer
			C[i,j]<- A[i,j]+B[i,j];
		FinPara
	finpara
	
	Escribir "! Suma de Matrices !";
	ImprimirA(A,n,k,l);
	ImprimirB(B,n,k,l);
	Escribir " ";
	ImprimirC(C,n,k,l);
	esperar tecla;
	limpiar pantalla;
	hasta que repetir1="no";
Finproceso

SubProceso ImprimirA(A,n,k,l)
	Escribir " ";
	Escribir "Matriz A";
	Escribir " ";
	Para k<-1 hasta n hacer
		Escribir sin saltar "| ";
		Para l<-1 hasta n hacer
			Escribir sin saltar A[k,l]," | ";
		FinPara
		Escribir " ";
		
	finpara
	
FinSubProceso


SubProceso ImprimirB(B,n,k,l)
	Escribir " ";
	Escribir "Matriz B";
	Escribir " ";
	Para k<-1 hasta n hacer
		Escribir sin saltar "| ";
		Para l<-1 hasta n hacer
			Escribir sin saltar B[k,l]," | ";
		FinPara
		Escribir " ";
		
	finpara
	
FinSubProceso

SubProceso ImprimirC(C,n,k,l)
	Escribir " ";
	Escribir "Matriz A+B";
	Escribir " ";
	Para k<-1 hasta n hacer
		Escribir sin saltar "| ";
		Para l<-1 hasta n hacer
			Escribir sin saltar C[k,l]," | ";
		FinPara
		Escribir " ";
		
	finpara
	
FinSubProceso