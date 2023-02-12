Proceso Determinar_la_forma_de_pago_en_funcion_del_Monto_a_pagar
		Definir MontoPago1,Inversion1,Prestamo1, Credito1,Interes1 como real;
		
		Escribir "Indique el monto a pagar por la compra: ";
		Leer MontoPago1;
		Escribir "Para una compra con costo: $", MontoPago1,".00 se debera:";
		Escribir "  _________________________________________";
		
		Si MontoPago1 > 500000 Entonces;
			Inversion1 <- (MontoPago1 * 55) / 100;
			Prestamo1  <- (MontoPago1 * 30) / 100;
			Credito1  <- (MontoPago1 * 15) / 100;
			Interes1  <- (Credito1 * 20) / 100;
			Escribir "  - Invertir capital propio por...(55%): $",Inversion1,".00";
			Escribir "  - Solicitar Prestamo al banco ..(30%): $",Prestamo1 ,".00";
			Escribir "  - Solicitar Credito a fabricante(15%): $",Credito1  ,".00";
			Escribir "  - Interes por Credito ..........(20%): $",Interes1  ,".00";
		
		SiNo
			Inversion1 <- (MontoPago1 * 70) / 100;
			Credito1  <- (MontoPago1 * 30) / 100;
			Interes1  <- (Credito1 * 20) / 100;
			Escribir "  - Invertir capital propio por...(70%): $",Inversion1,".00";
			Escribir "  - Solicitar Credito a fabricante(30%): $",Credito1  ,".00";
			Escribir "  - Interes por Credito ..........(20%): $",Interes1  ,".00";
			
		FinSi
		
		
		
FinProceso
