// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

#include<iostream>
#include<cstdlib>
#include<stdlib.h>

using namespace std;

// Para leer variables de texto se utiliza el operador << del objeto cin, que
// lee solo una palabra. Para leer una linea completa (es decir, incluyendo los
// espacios en blanco) se debe utilzar getline (ej, reemplazar cin>>x por
// getline(cin,x)), pero obliga a agregar un cin.ignore() si antes del getline
// se leyó otra variable con >>.

int main() {
	string azar1;
	float division[100];
	int i;
	int m;
	float multi[100];
	int n;
	int opc;
	string repprog;
	float resta[100];
	float suma[100];
	int vectora[100];
	int vectorb[100];
	opc = 0;
	n = 0;
	repprog = "yes";
	do {
		cout << "Menu Operacion de Vectores" << endl;
		cout << "" << endl;
		cout << "1) Leer datos" << endl;
		cout << "2) Suma" << endl;
		cout << "3) Resta" << endl;
		cout << "4) Multiplicacion" << endl;
		cout << "5) Division" << endl;
		cin >> opc;
		switch (opc) {
		case 1:
			azar1 = "N";
			cout << "1) Almacenar datos" << endl;
			cout << " " << endl;
			cout << "Generar datos de modo aleatorio? (S/N)" << endl;
			cin >> azar1;
			if (azar1=="S") {
				cout << "Ingresa el numero de datos en los vectores" << endl;
				cin >> n;
				for (i=1;i<=n;i++) {
					vectora[i] = (rand()%10);
					vectorb[i] = (rand()%10);
				}
				cout << " " << endl;
				cout << "* Datos en Vector-A:" << endl;
				for (i=1;i<=n;i++) {
					cout << "Dato: " << i << " : " << vectora[i] << endl;
				}
				cout << " " << endl;
				cout << "* Datos en Vector-B:" << endl;
				for (i=1;i<=n;i++) {
					cout << "Dato: " << i << " : " << vectorb[i] << endl;
				}
			} else {
				cout << "Ingresa el numero de datos en los vectores" << endl;
				cin >> n;
				if (n>=1) {
					for (i=1;i<=n;i++) {
						cout << "Ingrese el dato " << i << " del vector A" << endl;
						cin >> m;
						vectora[i] = m;
					}
					for (i=1;i<=n;i++) {
						cout << "Ingrese el dato " << i << " del vector B" << endl;
						cin >> m;
						vectorb[i] = m;
					}
					cout << " " << endl;
					cout << "* Datos en Vector-A:" << endl;
					for (i=1;i<=n;i++) {
						cout << "Dato: " << i << " : " << vectora[i] << endl;
					}
					cout << " " << endl;
					cout << "* Datos en Vector-B:" << endl;
					for (i=1;i<=n;i++) {
						cout << "Dato: " << i << " : " << vectorb[i] << endl;
					}
				} else {
					cout << "Ingresa un numero mayor a 0" << endl;
				}
			}
			break;
		case 2:
			cout << "* Suma de Vectores" << endl;
			cout << " " << endl;
			cout << "Vector1:  Vector2:  Suma:" << endl;
			for (i=1;i<=n;i++) {
				suma[i] = vectora[i]+vectorb[i];
				cout << vectora[i] << "         " << vectorb[i] << "         " << suma[i] << endl;
			}
			break;
		case 3:
			if (n<=0) {
				cout << "Aun no hay datos definidos." << endl;
				cout << "Introduce datos con la opcion 1 del menu..." << endl;
			} else {
				cout << "* Resta de de Vectores" << endl;
				cout << " " << endl;
				cout << "Vector1:  Vector2:  Resta:" << endl;
				for (i=1;i<=n;i++) {
					resta[i] = vectora[i]-vectorb[i];
					cout << vectora[i] << "         " << vectorb[i] << "         " << resta[i] << endl;
				}
			}
			break;
		case 4:
			if (n<=0) {
				cout << "Aun no hay datos definidos." << endl;
				cout << "Introduce datos con la opcion 1 del menu..." << endl;
			} else {
				cout << "* Multiplicacion de Vectores" << endl;
				cout << " " << endl;
				cout << "Vector1:  Vector2:  Multiplicacion:" << endl;
				for (i=1;i<=n;i++) {
					multi[i] = vectora[i]*vectorb[i];
					cout << vectora[i] << "         " << vectorb[i] << "         " << multi[i] << endl;
				}
			}
			break;
		case 5:
			if (n<=0) {
				cout << "Aun no hay datos definidos." << endl;
				cout << "Introduce datos con la opcion 1 del menu..." << endl;
			} else {
				cout << "* Division de Vectores" << endl;
				cout << " " << endl;
				cout << "Vector1:  Vector2:  Division:" << endl;
				for (i=1;i<=n;i++) {
					division[i] = vectora[i]/vectorb[i];
					cout << vectora[i] << "         " << vectorb[i] << "         " << division[i] << endl;
				}
			}
			break;
		}
		system("pause");
		system("cls");
	} while (repprog!="no");
	return 0;
}

