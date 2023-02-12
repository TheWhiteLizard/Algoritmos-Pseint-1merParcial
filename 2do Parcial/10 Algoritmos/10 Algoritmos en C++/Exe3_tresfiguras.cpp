// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

#include<iostream>
#include<stdlib.h>
using namespace std;

// Para leer variables de texto se utiliza el operador << del objeto cin, que
// lee solo una palabra. Para leer una linea completa (es decir, incluyendo los
// espacios en blanco) se debe utilzar getline (ej, reemplazar cin>>x por
// getline(cin,x)), pero obliga a agregar un cin.ignore() si antes del getline
// se leyó otra variable con >>.

int main() {
	float aux;
	int d;
	float i;
	float j;
	string linea;
	float m;
	float medio;
	float n;
	string opcion1;
	string repprog;
	repprog = "yes";
	do {
		linea = "";
		cout << "Realizar la Impresion de una figura." << endl;
		cout << "Seleccione una opcion:" << endl;
		cout << "" << endl;
		cout << "A.- Linea de n numero de *:" << endl;
		cout << "B.- Rectángulo o cuadrado de m*n número de *:" << endl;
		cout << "C.- Rombo de n número de * para la diagonal:" << endl;
		cin >> opcion1;
		if (opcion1=="A") {
			cout << "A.- Linea de n numero de *:" << endl;
			cout << "Tamaño de la linea?" << endl;
			cin >> n;
			for (i=0;i<=n-1;i++) {
				linea = (linea+"*");
			}
			cout << linea << endl;
		} else {
			if (opcion1=="B") {
				cout << "B.- Rectángulo o cuadrado de m*n número de *:" << endl;
				cout << "Tamaño de la base del rectangulo?" << endl;
				cin >> n;
				cout << "Tamaño de la altura del rectangulo?" << endl;
				cin >> m;
				for (i=0;i<=n-1;i++) {
					linea = (linea+"*");
				}
				for (i=0;i<=m-1;i++) {
					cout << "     " << linea << endl;
				}
			} else {
				if (opcion1=="C") {
					cout << "Rombo de n número de * para la diagonal:" << endl;
					cout << "¿Tamaño de la diagonal mayor del rombo (debe ser un número impar)?" << endl;
					do {
						cin >> d;
						if (d%2==0) {
							cout << "El tamaño de la diagonal debe ser un numero impar..." << endl;
							cout << "Indica el Tamaño de la diagonal: " << endl;
						}
					} while (!(d%2!=0));
					for (i=0;i<=d-1;i++) {
						for (aux=0;aux<=d-i;aux++) {
							cout << " ";
						}
						for (j=0;j<=i;j++) {
							cout << "* ";
						}
						cout << " " << endl;
					}
					for (i=d-2;i>=0;i--) {
						for (aux=0;aux<=d-i;aux++) {
							cout << " ";
						}
						for (j=i;j>=0;j--) {
							cout << "* ";
						}
						cout << " " << endl;
					}
				} else {
					cout << "La opcion " << opcion1 << " no es una opcion valida a, b ó c" << endl;
				}
			}
		}
		system("pause"); // a diferencia del pseudocódigo, espera un Enter, no cualquier tecla
		system("cls"); // no hay forma directa de borrar la pantalla con C++ estandar
	} while (repprog!="no");
	return 0;
}

