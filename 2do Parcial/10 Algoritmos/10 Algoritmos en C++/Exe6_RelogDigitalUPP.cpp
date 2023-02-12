// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

#include<iostream>
#include<ctime>
using namespace std;

// No hay en el C++ estandar una funcion equivalente a "esperar", pero puede programarse una similar
void esperar(double t);

// Para leer variables de texto se utiliza el operador << del objeto cin, que
// lee solo una palabra. Para leer una linea completa (es decir, incluyendo los
// espacios en blanco) se debe utilzar getline (ej, reemplazar cin>>x por
// getline(cin,x)), pero obliga a agregar un cin.ignore() si antes del getline
// se leyó otra variable con >>.

int main() {
	string cerodhora;
	string cerominuto;
	string cerosegundo;
	int horas1;
	int minutos1;
	int segundos1;
	for (horas1=0;horas1<=23;horas1++) {
		for (minutos1=0;minutos1<=59;minutos1++) {
			for (segundos1=0;segundos1<=59;segundos1++) {
				cout << endl; // no hay forma directa de borrar la pantalla con C++ estandar
				if (horas1>9) {
					cerodhora = "";
				} else {
					cerodhora = "0";
				}
				if (minutos1>9) {
					cerominuto = "";
				} else {
					cerominuto = "0";
				}
				if (segundos1>9) {
					cerosegundo = "";
				} else {
					cerosegundo = "0";
				}
				cout << "**********************" << endl;
				cout << "*  RELOG DIGITAL UPP *" << endl;
				cout << "*       HH:MM:SS     *" << endl;
				cout << "*       " << cerodhora << horas1 << ":" << cerominuto << minutos1 << ":" << cerosegundo << segundos1 << "     *" << endl;
				cout << "**********************" << endl;
				esperar(1*1000);
			}
		}
	}
	return 0;
}


void esperar(double t) {
	clock_t t0 = clock();
	double e = 0;
	do {
		e = 1000*double(clock()-t0)/CLOCKS_PER_SEC;
	} while (e<t);
}

