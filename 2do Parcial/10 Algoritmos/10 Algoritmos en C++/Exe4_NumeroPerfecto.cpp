// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

#include<iostream>
using namespace std;

// Para leer variables de texto se utiliza el operador << del objeto cin, que
// lee solo una palabra. Para leer una linea completa (es decir, incluyendo los
// espacios en blanco) se debe utilzar getline (ej, reemplazar cin>>x por
// getline(cin,x)), pero obliga a agregar un cin.ignore() si antes del getline
// se leyó otra variable con >>.

int main() {
	int i;
	float m;
	int n;
	int opc;
	float res;
	float suma;
	suma = 0.0;
	res = 0.0;
	m = 0.0;
	cout << " Determinar si un numero es perfecto" << endl;
	do {
		suma = 0;
		cout << "" << endl;
		cout << "Ingresa un numero" << endl;
		cin >> n;
		if (n>=1) {
			for (i=1;i<=n-1;i++) {
				res = n%i;
				if (res==0) {
					suma = suma+i;
				}
			}
			if (suma==n) {
				cout << "Es numero  perfecto" << endl;
			} else {
				cout << "NO es numero perfecto" << endl;
			}
		} else {
			cout << "" << endl;
			cout << "Ingresa un numero entero" << endl;
		}
		cout << "" << endl;
		cout << "Que opcion desea realizar:" << endl;
		cout << "1) Volver a introducir un numero   2)Terminar proceso   " << endl;
		cin >> opc;
	} while (opc!=2);
	return 0;
}

