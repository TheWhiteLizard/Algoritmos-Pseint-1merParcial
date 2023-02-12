
Proceso Cuadro_Magico
	definir n,f,c,l,i,j,k,ft,ct,nmagico,num,mat,nummax,esp,espm,suma como entero;
	definir espacios,repetir1 como cadena;
	repetir1<-"si";
	Dimension mat[100,100]; 		
	
	repetir 
	espacios<-"";
	suma<-0;
	suma<-0;
	escribir " GENERAR UN CUADRO MAGICO DE TAMAÑO n*n" ;
		escribir " ";
		escribir "Indique el tamaño del Cuadro Magico (debe ser inpar >= 3)" ;
		Leer n ;
		
		nummax<-n*n;
		si nummax>9 Entonces
			espm<-1;
			si nummax>99 Entonces
				espm<-2;
				si nummax>999 Entonces
					espm<-3;
				FinSi
			FinSi
		sino 
			espm<-0;
		FinSi
		
		Para i<-1 Hasta n Con Paso 1 Hacer 
			Para j<-1 Hasta n Con Paso 1 Hacer 
				mat[i,j]<-0 ;
			FinPara 
		FinPara 
		nmagico<- (n^3+n)/2;
		num<- 1; 
		f<-1; 
		c<- (n/2)+0.5; 
		mat[f,c]<- num ;
		num<-num +1 ;
		
		Mientras (num<= n^2) Hacer 
			ft<-f;
			ct<-c;
			f<- f-1; 
			Si (f<1) 	Entonces 
				f<-n;
			FinSi 
			
			c<- c+1; 
			
			Si (c>n) Entonces 
				c<-1 ;
			FinSi
			
			Si mat[f,c]=0 Entonces 	
				mat[f,c]<-num;
			Sino 
				f<-ft;
				c<-ct;				
				f<- f+1; 
				Si (f>n) Entonces 
					f<-1 ;
				FinSi 
				mat[f,c]<-num; 
		FinSi 
		num<-num +1; 
	 FinMientras 
	 
	 escribir " ";
	 Escribir ">> CUADRO MAGICO DE ",n,"*",n," <<";
	 escribir " ";
	 
	 Para i<-1 Hasta n Con Paso 1 Hacer 
		 escribir sin saltar "| ";
		 Para j<-1 Hasta n Con Paso 1 Hacer 
						 si mat[i,j]>0 Entonces
							 esp<-espm;
							 si mat[i,j]>9 Entonces
								 esp<-espm-1;
								 si mat[i,j]>99 Entonces
									 esp<-espm-2;
								 FinSi
							 FinSi
						 FinSi	
						 para k<-1 hasta esp hacer
							 espacios<-concatenar(espacios," ");
						 FinPara
			 escribir sin saltar espacios,mat[i,j], " | " ;
			 espacios<-"";
			 esp<-0;
		 FinPara 
		 escribir " ";
	 FinPara 
	 
	 
	 Escribir " ";
	 Para i<-1 Hasta n Con Paso 1 Hacer //Sumar Filas
		 escribir sin saltar "Suma Fila: ",i, " > ";
		 Para j<-1 Hasta n Con Paso 1 Hacer 
			 suma<-suma+mat[i,j];
			 escribir sin saltar mat[i,j]," + ";
		 FinPara 
		 escribir " = ",suma;
		 suma<-0;
	 FinPara 
	 
	 Para j<-1 Hasta n Con Paso 1 Hacer //Sumar Columnas
		 //Escribir " ";
		 
		 escribir sin saltar "Suma Columna: ",j, " > ";
		 Para i<-1 Hasta n Con Paso 1 Hacer 
			 suma<-suma+mat[i,j];
			 escribir sin saltar mat[i,j]," + ";
		 FinPara 
		 escribir " = ",suma;
		 suma<-0;
	 FinPara 
	 Escribir sin saltar "Suma Diagonal:1 > ";
	 j<-0;
	 Para i<-1 Hasta n Con Paso 1 Hacer //Sumar diagonal1
		 j<-j+1;
		 suma<-suma+mat[i,j];
		 escribir sin saltar mat[i,j]," + ";
	 FinPara 
	 escribir " = ",suma;
	 
	 suma<-0;
	 j<-n;
	 Escribir sin saltar "Suma Diagonal:2 > ";
	 Para i<-1 Hasta n Con Paso 1 Hacer //Sumar diagonal2
		 suma<-suma+mat[i,j];
		 escribir sin saltar ,mat[i,j]," + ";
		 j<-j-1;
	 FinPara 
	 escribir " = ",suma;
	 escribir " ";
	 
	 esperar tecla;
	 Limpiar Pantalla;
	 hasta que repetir1="no";
	 
	 
FinProceso
