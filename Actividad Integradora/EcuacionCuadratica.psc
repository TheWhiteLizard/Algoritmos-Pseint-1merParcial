Proceso Raices_de_una_ecuacion_Cuadratica
	Definir a,b,c, radicando como real;
	
	escribir "Calcular las raices de una ecuacion cuadratica";
	escribir "Para la ecuacion cuadratica:";
	escribir "=> ax^2+bx+c=0 <=";
	escribir " ";
	escribir " Introduce el valor de -a- (diferente de cero)";
	leer a;
	Mientras a=0 Hacer
		escribir "El valor de -a- debe ser diferente a cero...";
		escribir "Introduce el valor de -a- (diferente de cero)";
		leer a;
	FinMientras
	escribir " Introduce el valor de -b- ";
	leer b;
	escribir " Introduce el valor de -c- ";
	leer c;
	radicando <- (b^2)-(4*a*c);
	
	escribir "radicando=",radicando;
	
	si radicando=0
		entonces
			
			escribir "Raiz x1= Raizx2= ",-b/(2*a);
			
		sino 
				si radicando>0
					entonces 	
								escribir "Raiz x1=",(-b+raiz(radicando))/(2*a);
								escribir "Raiz x2=",(-b-raiz(radicando))/(2*a);
					SiNo
								escribir "Raiz x1=",(-b/(2*a)),"+",(raiz(-radicando))/(2*a),"i";
								escribir "Raiz x2=",(-b/(2*a)),"-",(raiz(-radicando))/(2*a),"i";
				FinSi
							
	FinSi
	
FinProceso
