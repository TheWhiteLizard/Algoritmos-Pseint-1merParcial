

Algoritmo FuncionesdeCadena
	definir cadena1,repetir1,vocals,mayus,cadinversa,aux,encriptada como caracter;
	definir num1 como real;
	definir NumVocals,Nummayus,size,i,j,opc1,aux2 como entero;
	
	repetir1<-"si";
	vocals<-"aeiouáéíóúAEIOUÁÉÍÓÚ";
	mayus<-"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	cadinversa<-"";
	cadena1<-"";
	i<-0;
	j<-1;
	NumVocals<-0;
	Nummayus<-0;
	encriptada<-"";
	aux<-"";
	aux2<-0;
	
	
	Repetir
		
	Escribir "! Funciones de CADENA !";
	Escribir "";
	Escribir"	1) Leer cadena.";
	Escribir"	2) Numero de vocales en la cadena.";
	Escribir"	3) Imprimir al revés la cadena.";
	Escribir"	4) Contar cuantas mayusculas hay en la cadena.";
	Escribir"	5) Encriptar la cadena.";
	Escribir"	6) Imprimir si la cadena es un palíndromo.";
    Escribir "";
	Escribir "    Seleccione una opcion";
	leer opc1;
	
	si cadena1=""  entonces
		si opc1 != 1 entonces 
		escribir "Escribe una cadena";
		leer cadena1;
		size<-longitud(cadena1);
	FinSi
	
	FinSi
	
	segun opc1 hacer
		1:
			escribir "Escribe una cadena:";
			leer cadena1;
			size<-longitud(cadena1);
		2:
			ContarVocales(cadena1,size,vocals,i,j,NumVocals);
		3: 
			cadinversa <- CadenaInversa(cadena1,size,cadinversa,i);
			Escribir "La cadena al reves es:";
			Escribir cadinversa;
		4:
			Contarmayus(cadena1,size,mayus,i,j,Nummayus);
		5:	
			encriptada <- Encriptar(cadena1,size,encriptada,i,aux,aux2);
			Escribir "La cadena encriptada es:";
			Escribir encriptada;
		6:
			cadinversa <- CadenaInversa(cadena1,size,cadinversa,i);
			Escribir "";
			Escribir "La Cadena: ",MINUSCULAS(cadena1),"<>",MINUSCULAS(cadinversa);
			Escribir "";
			si MINUSCULAS(cadena1)=MINUSCULAS(cadinversa) entonces 
				Escribir "Es un Palindro!!!";
			sino 
				Escribir "No un Palindro!!!";
			FinSi
	FinSegun
	si opc1!=1 Entonces
		Esperar Tecla;
		
	FinSi
	Limpiar Pantalla;	
		
	hasta que repetir1="no";
	
FinAlgoritmo

subProceso ContarVocales(cadena1,size,vocals,i,j,NumVocals)
    Para i<-0 hasta size con paso 1 Hacer
        Para j<-0 hasta 19 Hacer
			
            Si SUBCADENA(cadena1,i,i)==SUBCADENA(vocals,j,j) Entonces
				//escribir "i:",i," j:",j," cadena:",SUBCADENA(cadena1,i,i)," -vocals:",SUBCADENA(vocals,j,j);	
                NumVocals<-NumVocals+1;
            FinSi
        FinPara
    FinPara
    Escribir "";
	Escribir "La Cadena: ",cadena1;
	Escribir "";
    Escribir "Contiene ",NumVocals," vocales.";
FinSubProceso

subProceso Contarmayus(cadena1,size,mayus,i,j,Nummayus)
    Para i<-0 hasta size Hacer
        Para j<-0 hasta 25 Hacer
			
            Si SUBCADENA(cadena1,i,i)==SUBCADENA(mayus,j,j) Entonces
				//escribir "i:",i," j:",j," cadena:",SUBCADENA(cadena1,i,i)," -vocals:",SUBCADENA(mayus,j,j);	
                Nummayus<-Nummayus+1;
            FinSi
        FinPara
    FinPara
    Escribir "";
	Escribir "La Cadena: ",cadena1;
	Escribir "";
    Escribir "La frase contiene ",Nummayus," mayusculas.";
FinSubProceso


Funcion cadinversa <- CadenaInversa(cadena1,size,cadinversa,i)
	cadinversa<-"";
	
	Para i<-size-1 hasta 0 Con Paso -1 Hacer
		//escribir "size ",size,i;
        cadinversa<-CONCATENAR(cadinversa,SUBCADENA(cadena1,i,i));
    FinPara
FinFuncion

Funcion encriptada <- Encriptar(cadena1,size,encriptada,i,aux,aux2)
	encriptada<-"";
	
	//escribir "llego aqui ",cadena1,"size=",size;
	Para i<-0 hasta size Con Paso 1 Hacer
		//escribir "size ",size,i;
		aux<-SUBCADENA(cadena1,i,i);
		escribir aux;
		aux2<-aux;
		//dec<-caracter(aux);
		//car<-ascii(dec+3);
        //encriptada<-CONCATENAR(encriptada,car);
    FinPara
FinFuncion





