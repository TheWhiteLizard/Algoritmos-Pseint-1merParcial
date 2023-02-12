Proceso Calcular_Inversion_por_cada_Socio_en_funcion_del_Monto_de_Hipoteca
	
		Definir Hipoteca1,Inversion1,InvSocio1, InvSocio2, Resta1 como real;
		
		Escribir "Indique el monto de la Inversion: ";
		Leer Inversion1;
		Escribir "Indique el monto de la Hipoteca: ";
		Leer Hipoteca1;
		
		Escribir "Con Hipoteca de: $", Hipoteca1,".00";
		Escribir "Y para una Inversion total de: $", Inversion1,".00";
		Escribir "  _________________________________________";
		
		Si Hipoteca1 < 1000000 Entonces;
			InvSocio1 <- Inversion1/2;
			InvSocio2 <- Inversion1/2;
			Escribir "  - Inversión Socio 1: .....(50%): $",InvSocio1,".00";
			Escribir "  - Inversión Socio 2: .....(50%): $",InvSocio2,".00";
			
		
		SiNo
			
			Si Inversion1 > Hipoteca1 entonces 
				InvSocio1 <- (Inversion1 - Hipoteca1) / 2 ;
				InvSocio2 <- (Inversion1 - Hipoteca1) / 2 ;
				Escribir "  - Se invierte total de Hipoteca: $",Hipoteca1,".00";
				Escribir "  - Inversión Socio 1: .....(50%): $",InvSocio1,".00";
				Escribir "  - Inversión Socio 2: .....(50%): $",InvSocio2,".00";
			SiNo
				Resta1 <- Hipoteca1-Inversion1;
				Escribir "  - El total de Inversion se cubre con la Hipoteca: $",Inversion1,".00";
				Escribir "  - El Restantes de la Hipoteca es: $",Resta1,".00";
				Escribir "  - Inversión Socio 2: ......(0%): $0.00";
			finsi	
				
			
		FinSi
		
		
		
FinProceso
