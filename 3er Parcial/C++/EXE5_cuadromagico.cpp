#include<iostream>
#include<cmath>
#include<stdlib.h>
using namespace std;


int main() {
	int c;
	int ct;
	int esp;
	string espacios;
	int espm;
	int f;
	int ft;
	int i;
	int j;
	int k;
	int l;
	int mat[100][100];
	int n;
	int nmagico;
	int num;
	int nummax;
	string repetir1;
	int suma;
	repetir1 = "si";
	do {
		espacios = "";
		suma = 0;
		suma = 0;
		cout << " GENERAR UN CUADRO MAGICO DE TAMAÑO n*n" << endl;
		cout << " " << endl;
		cout << "Indique el tamaño del Cuadro Magico (debe ser inpar >= 3)" << endl;
		cin >> n;
		nummax = n*n;
		if (nummax>9) {
			espm = 1;
			if (nummax>99) {
				espm = 2;
				if (nummax>999) {
					espm = 3;
				}
			}
		} else {
			espm = 0;
		}
		for (i=1;i<=n;i++) {
			for (j=1;j<=n;j++) {
				mat[i][j] = 0;
			}
		}
		nmagico = (pow(n,3)+n)/2;
		num = 1;
		f = 1;
		
		c=(n/2)+1;
		mat[f][c] = num;
		num = num+1;
		while ((num<=pow(n,2))) {
			ft = f;
			ct = c;
			f = f-1;
			if ((f<1)) {
				f = n;
			}
			c = c+1;
			if ((c>n)) {
				c = 1;
			}
			if (mat[f][c]==0) {
				mat[f][c] = num;
			} else {
				f = ft;
				c = ct;
				f = f+1;
				if ((f>n)) {
					f = 1;
				}
				mat[f][c] = num;
			}
			num = num+1;
		}
		cout << " " << endl;
		cout << ">> CUADRO MAGICO DE " << n << "*" << n << " <<" << endl;
		cout << " " << endl;
		for (i=1;i<=n;i++) {
			cout << "| ";
			for (j=1;j<=n;j++) {
				if (mat[i][j]>0) {
					esp = espm;
					if (mat[i][j]>9) {
						esp = espm-1;
						if (mat[i][j]>99) {
							esp = espm-2;
						}
					}
				}
				for (k=1;k<=esp;k++) {
					espacios = (espacios+" ");
				}
				cout << espacios << mat[i][j] << " | ";
				espacios = "";
				esp = 0;
			}
			cout << " " << endl;
		}
		cout << " " << endl;
		// Sumar Filas
		for (i=1;i<=n;i++) {
			cout << "Suma Fila: " << i << " > ";
			for (j=1;j<=n;j++) {
				suma = suma+mat[i][j];
				cout << mat[i][j] << " + ";
			}
			cout << " = " << suma << endl;
			suma = 0;
		}
		// Sumar Columnas
		for (j=1;j<=n;j++) {
			// Escribir " ";
			cout << "Suma Columna: " << j << " > ";
			for (i=1;i<=n;i++) {
				suma = suma+mat[i][j];
				cout << mat[i][j] << " + ";
			}
			cout << " = " << suma << endl;
			suma = 0;
		}
		cout << "Suma Diagonal:1 > ";
		j = 0;
		// Sumar diagonal1
		for (i=1;i<=n;i++) {
			j = j+1;
			suma = suma+mat[i][j];
			cout << mat[i][j] << " + ";
		}
		cout << " = " << suma << endl;
		suma = 0;
		j = n;
		cout << "Suma Diagonal:2 > ";
		// Sumar diagonal2
		for (i=1;i<=n;i++) {
			suma = suma+mat[i][j];
			cout <<" " << mat[i][j] << " + ";
			j = j-1;
		}
		cout << " = " << suma << endl;
		cout << " " << endl;
		system("pause");
		system("cls");
	} while (repetir1!="no");
	return 0;
}

