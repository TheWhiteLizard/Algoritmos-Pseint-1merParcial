	Proceso Simular_Relog_Digital
		Definir Horas1, Minutos1, Segundos1 como entero;
		Definir CerodHora, CeroMinuto, CeroSegundo como caracter;
		Para Horas1<-0 hasta 23 hacer
			Para Minutos1 <-0 hasta 59 hacer
				Para Segundos1 <-0 hasta 59 hacer
					Borrar pantalla;
					
					Si Horas1 > 9 Entonces
						CerodHora<-"";
					sino
						CerodHora<-"0";
					FinSi
					Si Minutos1 > 9 Entonces
						CeroMinuto<-"";
					Sino
						CeroMinuto<-"0";
					FinSi
					Si Segundos1 > 9 Entonces
						CeroSegundo <- "";
					Sino
						CeroSegundo<-"0";
					FinSi
					
					Escribir "**********************";
					Escribir "*  RELOG DIGITAL UPP *";
					Escribir "*       HH:MM:SS     *";
					Escribir "*       ",CerodHora, Horas1,":",CeroMinuto, Minutos1, ":",CeroSegundo, Segundos1,"     *";
					Escribir "**********************";
					Esperar 1 segundo;
				FinPara
			FinPara
		FinPara
FinProceso
