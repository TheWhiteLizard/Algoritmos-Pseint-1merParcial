Proceso Promedio_de_Calificaciones
	
	Definir Calificacion1,SumaCal1,PromCal1 como real;
	Definir NumCal1,ciclo1 como entero;
	escribir "Promedio de Calificaciones";
	
	escribir "Indique numero de calificaciones a promediar";
	leer Numcal1;
	ciclo1 <- 1;
	calificacion1 <- 1;
	SumaCal1<- 0;
	Repetir
		escribir "  --Escriba la Calificacion ", ciclo1,"/",Numcal1," (entre 1-10)";
		leer calificacion1;
		SumaCal1<-SumaCal1+calificacion1;
		ciclo1<-ciclo1+1;
		
	Hasta Que ciclo1>Numcal1
	PromCal1<-SumaCal1/Numcal1;
	Escribir "El promedio de las ",Numcal1," calificaciones es: " ,PromCal1;
	
FinProceso
