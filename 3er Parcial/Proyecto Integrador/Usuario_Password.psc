

Algoritmo Usuario_
	Definir user,pswb,usuario,psw,acceso,repetir1 como cadena;
	Definir i,k como entero;
	
	acceso<-"no";
	repetir1<-"si";
	
	
	
	repetir
	limpiar pantalla;
	Escribir "-- Ingrese al sistema --";
	Escribir " ";
	Escribir sin saltar "Usuario: >";
	leer usuario;
	Escribir sin saltar "Password: >";
	leer psw;
	acceso<-validacc(usuario,psw,acceso);
	escribir " ";
	si acceso="si" entonces
		Escribir "Bienvenido al sistema ", Usuario,".";
	SiNo
		escribir "Usuario/Password no validos...";
	FinSi
	esperar 3 segundos;
	Limpiar Pantalla;
	
	hasta que repetir1="no";
	
	
	
	
FinAlgoritmo


SubProceso acceso <- validacc ( usuario,psw,acceso )
	Definir user,pswb como cadena;
	Definir i como entero;
	Dimension user[10];
	Dimension pswb[10];
	acceso<-"no";
	user[1]<-"Juan";user[2]<-"Ricardo";user[3]<-"Alex";
	pswb[1]<-"123";pswb[2]<-"456";pswb[3]<-"789";
	para i<-1 hasta 3 hacer
		si usuario=user[i]  entonces
			si psw=pswb[i] Entonces
				acceso<-"si";	
			FinSi
		FinSi
	FinPara
FinSubProceso


