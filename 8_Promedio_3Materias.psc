Proceso Calculo_de_Promedio_Matematicas_Fisica_Quimica
		Definir CEM1,CEF1,CEQ1,EM1,EF1,EQ1, TEM1,TEF1,TEQ1,TM1,TF1,TQ1, CM1,CF1,CQ1,CT1 como real;
		Escribir "Calculo de Promedio en Matematica, Fisica y Quimica";
		Escribir " ";
		Escribir "Ingrese Calificacion de Examen de Matematicas: ";
		Leer CEM1;
		Escribir "Ingrese Numero de tareas entregadas en Matematicas: ";
		Leer TEM1;
		Escribir "Ingrese Calificacion de Examen de Fisica: ";
		Leer CEF1;
		Escribir "Ingrese Numero de tareas entregadas en Fisica: ";
		Leer TEF1;
		Escribir "Ingrese Calificacion de Examen de Quimica: ";
		Leer CEQ1;
		Escribir "Ingrese Numero de tareas entregadas en Quimica: ";
		Leer TEQ1;
		
		EM1 <- CEM1 * 0.9;
		TM1 <- (TEM1/3) * 1 ;
		CM1 <- EM1 + TM1;
		
		EF1 <- CEF1 * 0.8;
		TF1 <- (TEF1/2) * 2 ;
		CF1 <- EF1 + TF1;
		
		
		EQ1 <- CEQ1 * 0.85;
		TQ1 <- (TEQ1/3) * 1.5 ;
		CQ1 <- EQ1 + TQ1;
		
		CT1 <- (CM1+CF1+CQ1)/3;
		
		Escribir "_____________________________";
		Escribir "Promedio de Matematicas : ",CM1;
		Escribir "Promedio de Fisica      : ",CF1;
		Escribir "Promedio de Quimica     : ",CQ1;
		Escribir "_____________________________";
		Escribir "Promedio general        : ",CT1;
		
		
FinProceso
