Proceso DeterminarPosicion

	Definir elemento,n,Elemay1,Elemen1,i,posmay1,posmen1 Como Numeros;
		
		Dimension elemento[200];
	
	Escribir "Ingrese el numero de elementos:";
	Leer n;
	
	Para i<-0 Hasta n-1 Hacer
		Escribir "Ingrese elemento ",i+1,":";
		Leer elemento[i];
	FinPara

	
	Si elemento[0]>elemento[1] Entonces
		Elemay1<-elemento[0];
		posmay1<-1;
		Elemen1<-elemento[1];
		posmen1<-2;
	SiNo
		Elemay1<-elemento[1];
		posmay1<-2;
		Elemen1<-elemento[0];
		posmen1<-1;
	FinSi
	
	Para i<-2 Hasta n-1 Hacer
		Si elemento[i]>Elemay1 Entonces 
			Elemay1<-elemento[i]; 
			posmay1<-i+1;
		SiNo 
			Si elemento[i]<=Elemen1 Entonces 
				Elemen1<-elemento[i]; 
				posmen1<-i+1;
			FinSi
		FinSi
		
		
				
	FinPara
	
	
	
	Escribir "El elemento mayor es: ",Elemay1," y se encuentra en la posicion: ", posmay1;
	Escribir "El elemento menor es: ",Elemen1," y se encuentra en la posicion: ", posmen1;
		
FinProceso
