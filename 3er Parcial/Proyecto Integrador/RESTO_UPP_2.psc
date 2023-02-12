

Algoritmo Restaurant_UPP
	Definir user,pswb,usuario,psw,acceso,repetir1,alimentos,pagook como cadena;
	Definir i,k, mesanum, agregar,opcion1,pago como entero;
	Definir precios,cuenta,total como real;
	acceso<-"no";
	repetir1<-"si";
	
	agregar<-0;
	
	Dimension alimentos[21];
	Dimension precios[21];
	Dimension cuenta[10,100];
	para i<-1 hasta 9 hacer
		cuenta[i,0]<-0;
	FinPara
	
	repetir
	Escribir "     ___          ___          ___                   ___                   ___          ___       ___            ";
	Escribir "    /  /\        /  /\        /  /\         ___     /  /\                 /__/\        /  /\     /  /\           ";
	Escribir "   /  /::\      /  /:/_      /  /:/_       /  /\   /  /::\                \  \:\      /  /::\   /  /::\          ";
	Escribir "  /  /:/\:\    /  /:/ /\    /  /:/ /\     /  /:/  /  /:/\:\                \  \:\    /  /:/\:\ /  /:/\:\         ";
	Escribir " /  /:/~/:/   /  /:/ /:/_  /  /:/ /::\   /  /:/  /  /:/  \:\           ___  \  \:\  /  /:/~/://  /:/~/:/         ";
	Escribir "/__/:/ /:/___/__/:/ /:/ /\/__/:/ /:/\:\ /  /::\ /__/:/ \__\:\         /__/\  \__\:\/__/:/ /://__/:/ /:/          ";
	Escribir "\  \:\/:::::/\  \:\/:/ /:/\  \:\/:/~/://__/:/\:\\  \:\ /  /:/         \  \:\ /  /:/\  \:\/:/ \  \:\/:/           ";
	Escribir " \  \::/~~~~  \  \::/ /:/  \  \::/ /:/ \__\/  \:\\  \:\  /:/           \  \:\  /:/  \  \::/   \  \::/            ";
	Escribir "  \  \:\       \  \:\/:/    \__\/ /:/       \  \:\\  \:\/:/             \  \:\/:/    \  \:\    \  \:\            ";
	Escribir "   \  \:\       \  \::/       /__/:/         \__\/ \  \::/               \  \::/      \  \:\    \  \:\           ";
	Escribir "    \__\/        \__\/        \__\/                 \__\/                 \__\/        \__\/     \__\/           ";
		
	esperar tecla;
	limpiar pantalla;
	Escribir "-- RESTO UPP --";
	Escribir " ";
	Escribir "Ingrese al sistema...";
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
	
	hasta que acceso="si";
	
	
	repetir
	Limpiar Pantalla;	
	Escribir "Menu de opciones:";
	Escribir " ";
	Escribir "1.- Abrir una cuenta nueva ";
	Escribir "2.- Agregar alimento extra en cuenta ";
	Escribir "3.- Leer cuenta ";
	Escribir "4.- Cerrar Cuenta";
	Escribir "5.- Salir del sistema";
	Escribir " ";
	
	
	leer opcion1;
	Menualimentos(alimentos,precios);
	Segun opcion1 hacer
		1:
			escribir "Abrir cuenta nueva";
			escribir " ";
			escribir sin saltar "Indicar numero de Mesa: >";
			leer mesanum;
			Mientras mesanum<1 o mesanum>10 Hacer
				escribir "Indica un numero de mesa valido 1-5...";
				leer mesanum;
			FinMientras
			Limpiar Pantalla;
			si cuenta[mesanum,0]>0 entonces
				escribir " ";
				escribir "Esta Mesa tiene una Cuanta abierta actual...";
				esperar 2 segundos;
			SiNo
				escribir " ";
				k<-0;
				i<-0;
				AgragarAlimento(mesanum,alimentos,precios,cuenta,k,i,agregar);
				
			FinSi;
	
		2:	Limpiar Pantalla;
			Escribir "-- Agregar Alimento Extra a Cuenta --";
			escribir " ";
			escribir Sin Saltar "Numero de Mesa:";
			leer mesanum;
			Mientras mesanum<1 o mesanum>10 Hacer
				escribir "Indica un numero de mesa valido 1-9...";
				leer mesanum;
			FinMientras
			si cuenta[mesanum,0]>0 entonces
				k<-cuenta[mesanum,0];
				i<-0;
				AgragarAlimento(mesanum,alimentos,precios,cuenta,k,i,agregar);
			SiNo
				escribir " ";
				Escribir "La Cuenta de la Mesa - ",mesanum," - No se encuentra abierta";
				esperar 2 segundos;
			FinSi
			
	
		3:
			Limpiar Pantalla;
			Escribir "-- Lectura de Cuenta --";
			escribir " ";
			escribir Sin Saltar "Numero de Mesa:";
			leer mesanum;
			Mientras mesanum<1 o mesanum>10 Hacer
				escribir "Indica un numero de mesa valido 1-9...";
				leer mesanum;
			FinMientras
			si cuenta[mesanum,0]>0 entonces
				escribir " ";
				escribir "Orden Actual:";
				escribir " ";
				para i<-1 hasta cuenta[mesanum,0] hacer
					Escribir "     ",alimentos[cuenta[mesanum,i]]; 
				FinPara
				escribir " ";
				esperar tecla;
			SiNo
				escribir " ";
				Escribir "La Cuenta de la Mesa - ",mesanum," - No se encuentra abierta";
				esperar 2 segundos;
			FinSi
			
			
			
		4:
			Limpiar Pantalla;
			Escribir "-- Cierre y Pago de Cuenta --";
			escribir " ";
			escribir Sin Saltar "Numero de Mesa:";
			leer mesanum;
			Mientras mesanum<1 o mesanum>10 Hacer
				escribir "Indica un numero de mesa valido 1-9...";
				leer mesanum;
			FinMientras
			si cuenta[mesanum,0]>0 entonces
				escribir " ";
				escribir "Ticket de venta Final, Mesa - ",mesanum," - :";
				escribir " ";
				total<-0;
				para i<-1 hasta cuenta[mesanum,0] hacer
					Escribir "     ",alimentos[cuenta[mesanum,i]],"$",precios[cuenta[mesanum,i]];
					total<-total+precios[cuenta[mesanum,i]];
				FinPara
				escribir " ";
				escribir " Total A Pagar: $",total;
				Escribir " ";
				pagook<-"no";
				escribir sin saltar "Pago realizado? (1-Si,2-No).";
				leer pago;
				si pago=1 Entonces
					Escribir " ";
					Escribir " Cuenta de mesa - ",mesanum," - CERRADA";
					cuenta[mesanum,0]<-0;
					esperar 2 segundos;
				FinSi
			SiNo
				escribir " ";
				Escribir "La Cuenta de la Mesa - ",mesanum," - No se encuentra abierta";
				esperar 2 segundos;
			FinSi
			
		5: 
			limpiar pantalla;
			
			escribir " ";
			Escribir "-- Salir del sistema --";
			escribir " ";
			repetir1<-"no";
			para i<-1 hasta 9 hacer
				si cuenta[i,0]<>0 entonces
					Escribir "La Cuenta de la Mesa - ",i," - Aun se encuentra Abierta";
					repetir1<-"si";
				FinSi
			FinPara
			si repetir1="si" Entonces
				Escribir " ";
				Escribir "Todas las cuantas deben estar cerradas antes de cerrar el sistema...";
				esperar 2 segundos;
			FinSi
			
			
						
	FinSegun
	
	
	hasta que repetir1="no";
	
FinAlgoritmo


SubProceso acceso <- validacc ( usuario,psw,acceso )
	Definir user,pswb como cadena;
	Definir i como entero;
	Dimension user[10];
	Dimension pswb[10];
	acceso<-"no";
	user[1]<-"Juan";user[2]<-"Ricardo";
	pswb[1]<-"123";pswb[2]<-"456";
	para i<-1 hasta 2 hacer
		si usuario=user[i]  entonces
			si psw=pswb[i] Entonces
				acceso<-"si";	
			FinSi
		FinSi
	FinPara
FinSubProceso


SubProceso AgragarAlimento( mesanum,alimentos,precios,cuenta,k,i,agregar )
	repetir	
		limpiar pantalla;	
		Escribir " Menu de Alimentos: ";
		escribir " ";
		para i<-1 hasta 10 hacer
			Escribir alimentos[i],"$",precios[i],"     ",alimentos[i+10],"$",precios[i+10];
		FinPara
		escribir " ";
		si k>0 entonces
			escribir "La Orden para mesa - ",mesanum,"- Contiene ",k," alimentos:";
			escribir " ";
			para i<-1 hasta k hacer
				Escribir alimentos[cuenta[mesanum,i]]; 
			FinPara
			escribir " ";
		FinSi
		escribir sin saltar "Que alimento deseas agregar: ";
		leer agregar;
		escribir " ";
		si agregar>=1 y agregar<=20 entonces
			k<-k+1;
			cuenta[mesanum,k]<-agregar;
		FinSi
		
	hasta que agregar<1 o agregar>20
	cuenta[mesanum,0]<-k;

FinSubProceso

SubProceso Menualimentos(alimentos,precios)
	alimentos[ 1]<-" 1.-Cereal con leche      ";
	alimentos[ 2]<-" 2.-Pan de dulce          ";
	alimentos[ 3]<-" 3.-Hot Cakes            ";
	alimentos[ 4]<-" 4.-Hot Dog               ";
	alimentos[ 5]<-" 5.-Sandwich             ";
	alimentos[ 6]<-" 6.-Torta                ";
	alimentos[ 7]<-" 7.-Hamburguesa          ";
	alimentos[ 8]<-" 8.-Enchiladas           ";
	alimentos[ 9]<-" 9.-Chilaquiles          ";
	alimentos[10]<-"10.-Sincronizada (3pz)   ";
	alimentos[11]<-"11.-Huevo al Gusto       ";
	alimentos[12]<-"12.-Tacos de Guizado(1pz)";
	alimentos[13]<-"13.-Arroz                ";
	alimentos[14]<-"14.-Sopa                 ";
	alimentos[15]<-"15.-Frijoles             ";
	alimentos[16]<-"16.-Menu del dia         ";
	alimentos[17]<-"17.-Jarra de agua(2lt)   ";
	alimentos[18]<-"18.-Refresco             ";
	alimentos[19]<-"19.-Cafe                 ";
	alimentos[20]<-"20.-Atole de Vainilla    ";
	precios[ 1]<- 9;
	precios[ 2]<- 5;
	precios[ 3]<-15;
	precios[ 4]<- 8;
	precios[ 5]<-15;
	precios[ 6]<-15;
	precios[ 7]<-25;
	precios[ 8]<-35;
	precios[ 9]<-35;
	precios[10]<-15;
	precios[11]<-30;
	precios[12]<-15;
	precios[13]<-10;
	precios[14]<-10;
	precios[15]<-10;
	precios[16]<-35;
	precios[17]<-15;
	precios[18]<-15;
	precios[19]<-8 ;
	precios[20]<-10;
FinSubProceso
