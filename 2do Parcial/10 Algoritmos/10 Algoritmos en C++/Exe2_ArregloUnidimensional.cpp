// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

#include<iostream>
#include<cmath>
using namespace std;

// Para leer variables de texto se utiliza el operador << del objeto cin, que
// lee solo una palabra. Para leer una linea completa (es decir, incluyendo los
// espacios en blanco) se debe utilzar getline (ej, reemplazar cin>>x por
// getline(cin,x)), pero obliga a agregar un cin.ignore() si antes del getline
// se leyó otra variable con >>.

int main() {
	float cuadrado[100];
	float cubo[100];
	int i;
	int j;
	int m;
	int n;
	int opc;
	int opc2;
	float raizcuadrada[100];
	string repprog;
	float res;
	float resta[100];
	float suma;
	int valores[100];
	opc = 0;
	suma = 0.0;
	res = 0.0;
	m = 0.0;
	n = 0;
	repprog = "yes";
	do {
		cout << "Menu" << endl;
		cout << "" << endl;
		cout << "1) Introducir datos" << endl;
		cout << "2) Mostrar datos" << endl;
		cout << "3) Modificar datos" << endl;
		cout << "4) Operaciones" << endl;
		cin >> opc;
		switch (opc) {
		case 1:
			cout << "1) Almacenar datos" << endl;
			cout << "Ingresa el valor maximo de numeros" << endl;
			cin >> n;
			if (n>=1) {
				for (i=1;i<=n;i++) {
					cout << "Ingrese el " << i << " numero" << endl;
					cin >> m;
					valores[i] = m;
				}
				for (i=1;i<=n;i++) {
					cout << "Dato: " << i << " valor: " << valores[i] << endl;
				}
			} else {
				cout << "Ingresa un numero mayor a 0" << endl;
			}
			break;
		case 2:
			cout << " " << endl;
			cout << "2) Mostrar datos" << endl;
			cout << " " << endl;
			if (n<=0) {
				cout << "Aun no hay datos definidos." << endl;
				cout << "Introduce datos con la opcion 1 del menu..." << endl;
			} else {
				if (n>=1) {
					for (i=1;i<=n;i++) {
						cout << "Dato: " << i << " valor: " << valores[i] << endl;
					}
				} else {
					cout << "Ingresa un numero mayor a 0" << endl;
				}
			}
			break;
		case 3:
			if (n<=0) {
				cout << "Aun no hay datos definidos." << endl;
				cout << "Introduce datos con la opcion 1 del menu..." << endl;
			} else {
				cout << " " << endl;
				cout << "3) Modificar datos" << endl;
				cout << " " << endl;
				cout << "Escriba el numero de dato que desee modificar" << endl;
				cin >> m;
				while (m<=0 || m>n) {
					cout << "Solo hay datos definidos entre 1 y " << n << endl;
					cout << "Escriba el numero de dato valido que desee modificar" << endl;
					cin >> m;
				}
				cout << "Valor actual del dato " << m << " es: " << valores[m] << endl;
				cout << "Ingrese el nuevo valor del dato " << m << " " << endl;
				cin >> j;
				valores[m] = j;
				cout << " " << endl;
				for (i=1;i<=n;i++) {
					cout << "Dato: " << i << " valor: " << valores[i] << endl;
				}
			}
			break;
		case 4:
			if (n<=0) {
				cout << "Aun no hay datos definidos." << endl;
				cout << "Introduce datos con la opcion 1 del menu..." << endl;
			} else {
				cout << "Operaciones" << endl;
				cout << "" << endl;
				cout << "1) Cuadrado de los datos" << endl;
				cout << "2) Raiz Cuadrada de los datos" << endl;
				cout << "3) Cubo de los datos" << endl;
				cout << "4) Restar el cubo del cuadrado de los Datos" << endl;
				cin >> opc2;
				switch (opc2) {
				case 1:
					cout << "* Cuadrado de los datos" << endl;
					cout << " " << endl;
					cout << "Dato:  Valor:  Cuadrado:" << endl;
					for (i=1;i<=n;i++) {
						cuadrado[i] = valores[i]*valores[i];
						cout << i << "       " << valores[i] << "       " << cuadrado[i] << endl;
					}
					break;
				case 2:
					cout << "* Raiz Cuadrada de los datos" << endl;
					cout << " " << endl;
					cout << "Dato:  Valor:  Raiz Cuadrada:" << endl;
					for (i=1;i<=n;i++) {
						raizcuadrada[i] = sqrtf(valores[i]);
						cout << i << "       " << valores[i] << "       " << raizcuadrada[i] << endl;
					}
					break;
				case 3:
					cout << "* Cubo de los datos" << endl;
					cout << " " << endl;
					cout << "Dato:  Valor:  Cubo:" << endl;
					for (i=1;i<=n;i++) {
						cubo[i] = pow((valores[i]),3);
						cout << i << "       " << valores[i] << "       " << cubo[i] << endl;
					}
					break;
				case 4:
					cout << "* Restar el cubo, del cuadrado de los datos" << endl;
					cout << " " << endl;
					cout << "Dato:  Valor: Cuadrado: - Cubo: Resta:" << endl;
					for (i=1;i<=n;i++) {
						cubo[i] = pow((valores[i]),3);
						cuadrado[i] = valores[i]*valores[i];
						resta[i] = cuadrado[i]-cubo[i];
						cout << i << "       " << valores[i] << "       " << cuadrado[i] << "   -   " << cubo[i] << "       " << resta[i] << endl;
					}
					break;
				default:
					cout << "Opcion invalida" << endl;
				}
			}
			break;
		}
		cin.get(); // a diferencia del pseudocódigo, espera un Enter, no cualquier tecla
		cout << endl; // no hay forma directa de borrar la pantalla con C++ estandar
	} while (repprog!="no");
	return 0;
}

