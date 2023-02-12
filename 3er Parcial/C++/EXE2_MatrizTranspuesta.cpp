// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

#include<iostream>
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

// Declaraciones adelantadas de las funciones
void imprimira(SIN_TIPO a[][], float n, float m);
void imprimirt(SIN_TIPO t[][], float n, float m);

int main() {
	float a[100][100];
	SIN_TIPO aux;
	int i;
	int j;
	int m;
	int n;
	string repetir1;
	float t[100][100];
	repetir1 = "si";
	do {
		cout << "! Matriz Transpuesta de tamaño NxM !" << endl;
		cout << " " << endl;
		cout << "Indica el numero de filas de la matriz:" << endl;
		cin >> n;
		cout << "Indica el numero de Columnas de la matriz:" << endl;
		cin >> m;
		for (i=1;i<=n;i++) {
			for (j=1;j<=m;j++) {
				a[i-1][j-1] = 0;
			}
		}
		for (i=1;i<=n;i++) {
			for (j=1;j<=m;j++) {
				imprimira(a,n,m);
				cout << "Introduce el valor de A[" << i << "," << j << "]" << endl;
				cin >> a[i-1][j-1];
				cout << endl; // no hay forma directa de borrar la pantalla con C++ estandar
			}
		}
		cout << " " << endl;
		for (i=1;i<=n;i++) {
			for (j=1;j<=m;j++) {
				aux = a[i-1][j-1];
				t[j-1][i-1] = a[i-1][j-1];
				t[j-1][i-1] = aux;
			}
		}
		cout << "! Matriz Transpuesta de A !" << endl;
		imprimira(a,n,m);
		cout << " " << endl;
		imprimirt(t,n,m);
		cin.get(); // a diferencia del pseudocódigo, espera un Enter, no cualquier tecla
		cout << endl; // no hay forma directa de borrar la pantalla con C++ estandar
	} while (repetir1!="no");
	return 0;
}

void imprimira(SIN_TIPO a[][], float n, float m) {
	float k;
	float l;
	cout << " " << endl;
	cout << "Matriz A" << endl;
	cout << " " << endl;
	for (k=1;k<=n;k++) {
		cout << "| ";
		for (l=1;l<=m;l++) {
			cout << a[k-1][l-1] << " | ";
		}
		cout << " " << endl;
	}
}

void imprimirt(SIN_TIPO t[][], float n, float m) {
	float k;
	float l;
	cout << " " << endl;
	cout << "Matriz Transpuesta de A" << endl;
	cout << " " << endl;
	for (k=1;k<=m;k++) {
		cout << "| ";
		for (l=1;l<=n;l++) {
			cout << t[k-1][l-1] << " | ";
		}
		cout << " " << endl;
	}
}

