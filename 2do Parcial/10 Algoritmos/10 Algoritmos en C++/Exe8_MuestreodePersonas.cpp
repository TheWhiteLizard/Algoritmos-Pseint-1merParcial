// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

#include<iostream>
#include<stdlib.h>
using namespace std;

// Para las variables que no se pudo determinar el tipo se utiliza la constante
// SIN_TIPO. El usuario debe reemplazar sus ocurrencias por el tipo adecuado
// (usualmente int,float,string o bool).
#define SIN_TIPO string

// Para leer variables de texto se utiliza el operador << del objeto cin, que
// lee solo una palabra. Para leer una linea completa (es decir, incluyendo los
// espacios en blanco) se debe utilzar getline (ej, reemplazar cin>>x por
// getline(cin,x)), pero obliga a agregar un cin.ignore() si antes del getline
// se leyó otra variable con >>.

int main() {
	float adulto[100][100];
	float adultom[100][100];
	string azar1;
	SIN_TIPO division[100];
	int i;
	int j;
	float joven[100][100];
	SIN_TIPO multi[100];
	int n;
	int nadulto;
	int nadultom;
	float nino[100][100];
	int njoven;
	int nnino;
	float persona[100][100];
	string repprog;
	SIN_TIPO resta[100];
	float sumaadulto;
	float sumaadultom;
	float sumajoven;
	float sumanino;
	repprog = "yes";
	do {
		n = 0;
		nnino = 0;
		njoven = 0;
		nadulto = 0;
		nadultom = 0;
		sumanino = 0;
		sumajoven = 0;
		sumaadulto = 0;
		sumaadultom = 0;
		cout << "Promedio de Peso por edades" << endl;
		cout << "" << endl;
		cout << "Ingresa el numero de personas del muestreo" << endl;
		cin >> n;
		if (n>=1) {
			for (i=1;i<=n;i++) {
				cout << "Introduzca Datos de la Persona " << i << endl;
				cout << "Edad:" << endl;
				cin >> persona[i][1];
				if (persona[i][1]>=0 && persona[i][1]<13) {
					nnino = nnino+1;
					nino[nnino][1] = persona[i][1];
					cout << "Peso:" << endl;
					cin >> nino[nnino][2];
				} else {
					if (persona[i][1]>=13 && persona[i][1]<30) {
						njoven = njoven+1;
						joven[njoven][1] = persona[i][1];
						cout << "Peso:" << endl;
						cin >> joven[njoven][2];
					} else {
						if (persona[i][1]>=30 && persona[i][1]<60) {
							nadulto = nadulto+1;
							adulto[nadulto][1] = persona[i][1];
							cout << "Peso:" << endl;
							cin >> adulto[nadulto][2];
						} else {
							if (persona[i][1]>=60) {
								nadultom = nadultom+1;
								adultom[nadultom][1] = persona[i][1];
								cout << "Peso:" << endl;
								cin >> adultom[nadultom][2];
							}
						}
					}
				}
			}
			system("pause");
			system("cls");
			cout << " " << endl;
			cout << "* Promedio de Peso en Muestra:" << endl;
			cout << " " << endl;
			cout << "* Niños    Edad    Peso(KG)" << endl;
			for (i=1;i<=nnino;i++) {
				cout << "  " << i << "        " << nino[i][1] << "        " << nino[i][2] << endl;
				sumanino = sumanino+nino[i][2];
			}
			cout << "  ->Promedio de peso en Niños:" << sumanino/nnino << endl;
			cout << " " << endl;
			cout << "* Jovenes    Edad    Peso(KG)" << endl;
			for (i=1;i<=njoven;i++) {
				cout << "  " << i << "        " << joven[i][1] << "        " << joven[i][2] << endl;
				sumajoven = sumajoven+joven[i][2];
			}
			cout << "  ->Promedio de peso en Jovenes:" << sumajoven/njoven << endl;
			cout << " " << endl;
			cout << "* Adultos    Edad    Peso(KG)" << endl;
			for (i=1;i<=nadulto;i++) {
				cout << "  " << i << "        " << adulto[i][1] << "        " << adulto[i][2] << endl;
				sumaadulto = sumaadulto+adulto[i][2];
			}
			cout << "  ->Promedio de peso en Adultos:" << sumaadulto/nadulto << endl;
			cout << " " << endl;
			cout << "* AdultosM    Edad    Peso(KG)" << endl;
			for (i=1;i<=nadultom;i++) {
				cout << "  " << i << "        " << adultom[i][1] << "        " << adultom[i][2] << endl;
				sumaadultom = sumaadultom+adultom[i][2];
			}
			cout << "  ->Promedio de peso en Adultos Mayores:" << sumaadultom/nadultom << endl;
		} else {
			cout << "Ingresa un numero mayor a 0" << endl;
		}
		system("pause");
		system("cls");
	} while (repprog!="no");
	return 0;
}

