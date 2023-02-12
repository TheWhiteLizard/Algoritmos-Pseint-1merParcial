// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// error+es por favor reportelos en el foro (http://pseint.sourceforge.net).

#include<iostream>
using namespace std;

// Para leer variables de texto se utiliza el operador << del objeto cin, que
// lee solo una palabra. Para leer una linea completa (es decir, incluyendo los
// espacios en blanco) se debe utilzar getline (ej, reemplazar cin>>x por
// getline(cin,x)), pero obliga a agregar un cin.ignore() si antes del getline
// se leyó otra variable con >>.

int main() {
	int i;
	float n;
	float promedio1;
	float puntajemay1;
	float puntajemen1;
	float puntos[200];
	float sumpuntos1;
	cout << "Ingrese el numero de autos:" << endl;
	cin >> n;
	for (i=0;i<=n-1;i++) {
		cout << "Ingrese la catidad de puntos contaminantes para el auto " << i+1 << ":" << endl;
		cin >> puntos[i];
	}
	if (puntos[0]>puntos[1]) {
		puntajemay1 = puntos[0];
		puntajemen1 = puntos[1];
	} else {
		puntajemay1 = puntos[1];
		puntajemen1 = puntos[0];
	}
	sumpuntos1 = puntos[0]+puntos[1];
	for (i=2;i<=n-1;i++) {
		if (puntos[i]>puntajemay1) {
			puntajemay1 = puntos[i];
		} else {
			if (puntos[i]<=puntajemen1) {
				puntajemen1 = puntos[i];
			}
		}
		sumpuntos1 = sumpuntos1+puntos[i];
	}
	promedio1 = sumpuntos1/n;
	cout << "El puntaje del auto que mas contamino es: " << puntajemay1 << endl;
	cout << "El puntaje del auto que menos contamino es: " << puntajemen1 << endl;
	cout << "El promedio de puntos contaminantes para los " << n << " autos es: " << promedio1 << endl;
	return 0;
}

