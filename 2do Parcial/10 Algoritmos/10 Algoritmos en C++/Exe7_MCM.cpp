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
	float d1;
	float d2;
	float div;
	float div1;
	float div2;
	float mcd;
	float mcm;
	float n1;
	float n2;
	float num1;
	float num2;
	string repetir1;
	repetir1 = "si";
	do {
		cout << "Calculo del Minimo comum Multiplo para la suma de dos Fracciones" << endl;
		n1 = 0;
		n2 = 0;
		d1 = 0;
		d2 = 0;
		mcm = 1;
		div = 1;
		div2 = 1;
		do {
			cout << "ingrese el numerador de la fraccion 1" << endl;
			cin >> num1;
			cout << "ingrese el denominador de la fraccion 1" << endl;
			cin >> div1;
			cout << "ingrese el numerador de la fraccion 2" << endl;
			cin >> num2;
			cout << "ingrese el denominador de la fraccion 2" << endl;
			cin >> div2;
			if ((div1<=0 || div2<=0)) {
				cout << "Ningun divisor debe ser menor a cero..." << endl;
				cout << "Introduca nuevos valores..." << endl;
			}
		} while (!((div1>0 && div2>0)));
		n1 = num1;
		n2 = num2;
		d1 = div1;
		d2 = div2;
		while (d1!=d2) {
			if (d1>d2) {
				d1 = d1-d2;
			} else {
				d2 = d2-d1;
			}
		}
		mcd = d1;
		mcm = (div1*div2)/d1;
		n1 = (n1*mcm)/div1;
		n2 = (n2*mcm)/div2;
		cout << " " << endl;
		cout << "El Maximo Comum Multiplo de las fraciones" << endl;
		cout << num1 << "/" << div1 << " y " << num2 << "/" << div2 << endl;
		cout << "Es: " << mcm << endl;
		cout << "las fraciones con este MCM quedan:" << endl;
		cout << n1 << "/" << mcm << " y " << n2 << "/" << mcm << endl;
		cout << "La suma seria:" << endl;
		cout << "(" << n1 << "+" << n2 << ")/" << mcm << " finalmente: " << n1+n2 << "/" << mcm << endl;
		cout << " " << endl;
		cout << "Pulse una tecla para repetir el programa..." << endl;
		system("pause");
		system("cls");
	} while (repetir1!="n");
	return 0;
}

