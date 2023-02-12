Proceso Calcular_Porcentaje_de_Utilidad_en_Base_a_Salario_Antiguedad
		Definir Producto3,Producto4, Clave1,  Clave2, Clave3,  Clave4, TipoClave1 como texto;
		Definir Porcentaje1, SalarioMensual1, Antiguedad1 como real;
		
		Escribir "Indique Antiguedad del Empleado (en años): ";
		Leer Antiguedad1;
		
		Si Antiguedad1 < 1 Entonces;
			Porcentaje1<- 5;
		Finsi
				
		si Antiguedad1>= 1 Entonces;
			Porcentaje1<-7;
		FinSi
		si Antiguedad1>= 2 Entonces;
			Porcentaje1<-10;
		FinSi
		si Antiguedad1>= 5 Entonces;
			Porcentaje1<-15;
		FinSi
		Si Antiguedad1>= 10 Entonces
			Porcentaje1<-20;
		FinSi				
				
		Escribir "El porcentaje de Utilidad es del : ",Porcentaje1,"% de su salario mensual";
FinProceso
