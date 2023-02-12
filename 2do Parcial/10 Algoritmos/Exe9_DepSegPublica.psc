Proceso Exe9
	
	Definir Color, nAutos, Digito, Contador, Amarillo, Rosa, Roja, Verde, Azul como real;
	Escribir "Escriba la cantidad de autos que entraron a la ciudad";
	Leer nAutos;
	Contador<-1;
	Amarillo<-0;
	Rosa<-0;
	Roja<-0;
	Verde<-0;
	Azul<-0;
	Mientras Contador<=nAutos Hacer
		Escribir "Escriba el ultimo digito de la placa del auto ",Contador;
		Leer Digito;
		Si ((Digito=1) o (Digito=2)) Entonces
			Amarillo<-Amarillo+1;
		Sino
			Si ((Digito=3) o (Digito=4)) Entonces
				Rosa<-Rosa+1;
			Sino
				Si ((Digito=5) o (Digito=6)) Entonces
					Roja<-Roja+1;
				Sino
					Si ((Digito=7)o(Digito=8)) Entonces
						Verde<-Verde+1;
					Sino
						Si ((Digito=9)o(Digito=0)) Entonces
							Azul<-Azul+1;
						Sino
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
		Contador<-Contador+1;
	FinMientras
	
	Escribir " La cantidad de autos por color de calcomania es: ";
	Escribir "    Amarillo: ",Amarillo;
	Escribir "    Rojos:    ",Roja;
	Escribir "    Rosas:    ",Rosa;
	Escribir "    Verde:    ",Verde;
	Escribir "    Azules:   ",Azul;

FinProceso

