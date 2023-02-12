Proceso Operaciones_trigonometricas_Seno_Coseno_Tangente_de_un_angulo
	Definir CA1,CO1,Hip1,Seno1,Coseno1,Tangente1 Como Real;
	Definir opcion1 Como Caracter;
	Escribir 'Selecione la Función Trigonometrica que desee calcular';
	Escribir 'a.- Seno';
	Escribir 'b.- Coseno';
	Escribir 'c.- Tangente';
	Leer opcion1;
	Si opcion1='a' Entonces
		Escribir 'Calculo de Seno ';
		Escribir 'Introduce Cateto Opuesto';
		Leer CO1;
		Escribir 'Introduce Hipotenusa';
		Leer Hip1;
		Seno1 <- CO1/Hip1;
		Escribir 'El valor del Seno de angulo es:',Seno1;
	SiNo
		Si opcion1='b' Entonces
			Escribir 'Calculo de Coseno ';
			Escribir 'Introduce Cateto Adyacente';
			Leer CA1;
			Escribir 'Introduce Hipotenusa';
			Leer Hip1;
			Coseno1 <- CA1/Hip1;
			Escribir 'El valor del Coseno de angulo es:',Coseno1;
		SiNo
			Si opcion1='c' Entonces
				Escribir 'Calculo de la Tangente ';
				Escribir 'Introduce Cateto Opuesto';
				Leer CO1;
				Escribir 'Introduce Cateto Adyacente';
				Leer CA1;
				Tangente1 <- CA1/Hip1;
				Escribir 'El valor de la Tangente del angulo es:',Tangente1;
			SiNo
				Escribir 'La opcion ',opcion1,' no es una opcion valida a, b ó c';
			FinSi
		FinSi
	FinSi
FinProceso

