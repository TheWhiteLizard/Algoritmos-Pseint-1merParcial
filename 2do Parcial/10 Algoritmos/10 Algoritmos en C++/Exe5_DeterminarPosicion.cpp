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
	float elemay1;
	float elemen1;
	float elemento[200];
	int i;
	float n;
	float posmay1;
	float posmen1;
	cout << "Ingrese el numero de elementos:" << endl;
	cin >> n;
	for (i=0;i<=n-1;i++) {
		cout << "Ingrese elemento " << i+1 << ":" << endl;
		cin >> elemento[i];
	}
	if (elemento[0]>elemento[1]) {
		elemay1 = elemento[0];
		posmay1 = 1;
		elemen1 = elemento[1];
		posmen1 = 2;
	} else {
		elemay1 = elemento[1];
		posmay1 = 2;
		elemen1 = elemento[0];
		posmen1 = 1;
	}
	for (i=2;i<=n-1;i++) {
		if (elemento[i]>elemay1) {
			elemay1 = elemento[i];
			posmay1 = i+1;
		} else {
			if (elemento[i]<=elemen1) {
				elemen1 = elemento[i];
				posmen1 = i+1;
			}
		}
	}
	cout << "El elemento mayor es: " << elemay1 << " y se encuentra en la posicion: " << posmay1 << endl;
	cout << "El elemento menor es: " << elemen1 << " y se encuentra en la posicion: " << posmen1 << endl;
	return 0;
}

