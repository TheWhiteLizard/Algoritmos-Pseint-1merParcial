Proceso Verificentro

	Definir puntos,n,Puntajemay1,Puntajemen1,i,SumPuntos1,Promedio1 Como Numeros;
		Dimension puntos[200];
	
	Escribir "Ingrese el numero de autos:";
	Leer n;
	
	Para i<-0 Hasta n-1 Hacer
		Escribir "Ingrese la catidad de puntos contaminantes para el auto ",i+1,":";
		Leer puntos[i];
	FinPara

	
	Si puntos[0]>puntos[1] Entonces
		Puntajemay1<-puntos[0];
		Puntajemen1<-puntos[1];
	SiNo
		Puntajemay1<-puntos[1];
		Puntajemen1<-puntos[0];
	FinSi
	
	SumPuntos1 <- puntos[0]+puntos[1];
	
	Para i<-2 Hasta n-1 Hacer
		Si puntos[i]>Puntajemay1 Entonces 
						Puntajemay1<-puntos[i]; 
		SiNo 
			Si puntos[i]<=Puntajemen1 Entonces 
				Puntajemen1<-puntos[i]; 
			FinSi
		FinSi
		
		SumPuntos1 <- SumPuntos1+puntos[i];
				
	FinPara
	
	Promedio1 <- SumPuntos1/n;
	
	
	Escribir "El puntaje del auto que mas contamino es: ",Puntajemay1;
	Escribir "El puntaje del auto que menos contamino es: ",Puntajemen1;
	Escribir "El promedio de puntos contaminantes para los ", n ," autos es: ",Promedio1;
	
FinProceso
