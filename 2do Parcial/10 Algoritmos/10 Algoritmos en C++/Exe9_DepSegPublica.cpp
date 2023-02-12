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
	float amarillo;
	float azul;
	float color;
	float contador;
	float digito;
	float nautos;
	float roja;
	float rosa;
	float verde;
	cout << "Escriba la cantidad de autos que entraron a la ciudad" << endl;
	cin >> nautos;
	contador = 1;
	amarillo = 0;
	rosa = 0;
	roja = 0;
	verde = 0;
	azul = 0;
	while (contador<=nautos) {
		cout << "Escriba el ultimo digito de la placa del auto " << contador << endl;
		cin >> digito;
		if (((digito==1) || (digito==2))) {
			amarillo = amarillo+1;
		} else {
			if (((digito==3) || (digito==4))) {
				rosa = rosa+1;
			} else {
				if (((digito==5) || (digito==6))) {
					roja = roja+1;
				} else {
					if (((digito==7) || (digito==8))) {
						verde = verde+1;
					} else {
						if (((digito==9) || (digito==0))) {
							azul = azul+1;
						} else {
						}
					}
				}
			}
		}
		contador = contador+1;
	}
	cout << " La cantidad de autos por color de calcomania es: " << endl;
	cout << "    Amarillo: " << amarillo << endl;
	cout << "    Rojos:    " << roja << endl;
	cout << "    Rosas:    " << rosa << endl;
	cout << "    Verde:    " << verde << endl;
	cout << "    Azules:   " << azul << endl;
	return 0;
}

