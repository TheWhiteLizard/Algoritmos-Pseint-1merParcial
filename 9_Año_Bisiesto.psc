Proceso Determinar_si_el_Ano_es_Bisiesto
		Definir Year1 como real;
		Escribir "Determinar el A�o es Bisiesto";
		Escribir " ";
		Escribir "Ingrese el A�o: ";
		Leer Year1;
		
		Si Year1 mod 4 = 0  Entonces
			Si Year1 MOD 100 = 0  Entonces
				Si Year1 MOD 400 = 0 Entonces
					Escribir "El A�o: ",Year1, " es Bisiesto";
				SiNo
					Escribir "El A�o: ",Year1, " no es Bisiesto";
				FinSi
			SiNo
				Escribir "El A�o: ",Year1, " es Bisiesto";
			FinSi
		SiNo
			Escribir "El A�o: ",Year1, " no es Bisiesto";
		FinSi
		
FinProceso
