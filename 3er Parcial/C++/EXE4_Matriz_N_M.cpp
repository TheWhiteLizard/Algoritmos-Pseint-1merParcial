#include<iostream>
#include<stdlib.h>
using namespace std;
#define SIN_TIPO string
void imprimira(int a[100][100], int n, int m, int k, int l);

int main() {
	int a[100][100];
	float b;
	float c;
	int i;
	int j;
	int k;
	int l;
	int m;
	int n;
	int opcion;
	string repetir1;
	k = 0;
	l = 0;
	n = 0;
	m = 0;
	repetir1 = "si";
	do {
		cout << "! Operacion en Matriz !" << endl;
		cout << " " << endl;
		cout << " " << endl;
		cout << "Menu:" << endl;
		cout << "1.-Dimensionar la Matriz N*M." << endl;
		cout << "2.-Introducir todos los datos." << endl;
		cout << "3.-Modificar/Introducir valor en posicion n*m." << endl;
		cout << "4.-Leer valor de un dato en la posicion n*m." << endl;
		cout << "5.-Mostrar Matriz completa" << endl;
		cout << " " << endl;
		cout << "Selecione una opcion: ";
		cin >> opcion;
		if (opcion!=1) {
			if (opcion!=6) {
				if (n<=0) {
					cout << "Indica el numero de filas: " << endl;
					cin >> n;
					cout << "Indica el numero de columnas: " << endl;
					cin >> m;
					for (i=1;i<=n;i++) {
						for (j=1;j<=m;j++) {
							a[i][j] = 0;
						}
					}
				}
			}
		}
		switch (opcion) {
		case 1:
			cout << "Indica el numero de filas: " << endl;
			cin >> n;
			cout << "Indica el numero de columnas: " << endl;
			cin >> m;
			for (i=1;i<=n;i++) {
				for (j=1;j<=m;j++) {
					a[i][j] = 0;
				}
			}
			imprimira(a,n,m,k,l);
			break;
		case 2:
			system("cls");
			for (i=1;i<=n;i++) {
				for (j=1;j<=m;j++) {
					imprimira(a,n,m,k,l);
					cout << "Introduce el valor de A[" << i << "," << j << "]" << endl;
					cin >> a[i][j];
					system("cls");
				}
			}
			imprimira(a,n,m,k,l);
			break;
		case 3:
			imprimira(a,n,m,k,l);
			cout << "Indica la fila a modificar: " << endl;
			cin >> k;
			cout << "Indica la columna a modificar: " << endl;
			cin >> l;
			cout << "Indica el dato de la posicion (" << k << "," << l << ")" << endl;
			cin >> a[k][l];
			imprimira(a,n,m,k,l);
			break;
		case 4:
			cout << "Leer un dato en la posicion n*m. " << endl;
			cout << "Indica la fila: ";
			cin >> k;
			cout << "Indica la columna: ";
			cin >> l;
			cout << "El dato en la posicion A(f,c) es: " << a[k][l]<<endl<<endl;
			break;
		case 5:
			imprimira(a,n,m,k,l);
			cout << " "<<endl;
			break;
		}
		cout << " ";
		system("pause");
		system("cls");
	} while (repetir1!="no");
	return 0;
}

void imprimira(int a[100][100], int n, int m, int k, int l) {
	cout << " " << endl;
	cout << "Matriz A" << endl;
	cout << " " << endl;
	for (k=1;k<=n;k++) {
		cout << "| ";
		for (l=1;l<=m;l++) {
			cout << a[k][l] << " | ";
		}
		cout << " " << endl;
	}
}

