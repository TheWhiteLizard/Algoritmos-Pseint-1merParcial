Proceso Determinar_Mes_y_Dia_con_valor_Valido
		Definir Mes1,Dia1 como real;
		Escribir "Determinar si Mes y Dia sn validos";
		Escribir " ";
		Escribir "Ingrese el Mes: ";
		Leer Mes1;
		Mientras Mes1<1 Hacer
				Escribir "Mes ",Mes1 ," Invalido...Ingrese nuevamente";
				Leer Mes1;
		FinMientras
			
		Mientras Mes1>12 Hacer
			Escribir "Mes ",Mes1 ," Invalido...Ingrese nuevamente";
			Leer Mes1;
		FinMientras
		Escribir "Mes ", Mes1, " correcto.";
		
		
		Escribir "Ingrese el Dia: ";
		Leer Dia1;
		Mientras Dia1<1 Hacer
			Escribir "Día ",Dia1 ," Invalido...Ingrese nuevamente";
			Leer Dia1;
		FinMientras
		
		Mientras Dia1>31 Hacer
			Escribir "Día ",Dia1 ," Invalido...Ingrese nuevamente";
			Leer Dia1;
		FinMientras
		
		
		Escribir "Mes ", Mes1, " y Día ", Dia1," . Correctos!!";
		
FinProceso
