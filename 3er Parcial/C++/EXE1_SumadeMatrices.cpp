#include<iostream>
#include<stdlib.h>
using namespace std;


void imprimira(int a[100][100], int n);
void imprimirb(int b[100][100], int n);
void imprimirc(int c[100][100], int n);

int main() {
	int a[100][100];
	int b[100][100];
	int c[100][100];
	int i;
	int j;
	int k;
	int l;
	int n;
	string repetir1;
	
	
	repetir1 = "si";
	do {
		cout << "! Suma de Matrices !" << endl;
		cout << " " << endl;
		cout << "Indica el tamaño de la matriz:" << endl;
		cin >> n;
		for (i=1;i<=n;i++) {
			for (j=1;j<=n;j++) {
				a[i-1][j-1] = 0;
				b[i-1][j-1] = 0;
			}
		}
		for (i=1;i<=n;i++) {
			for (j=1;j<=n;j++) {
				imprimira(a,n);
				cout << "Introduce el valor de A[" << i << "," << j << "]" << endl;
				cin >> a[i-1][j-1];
				system("cls");
			}
		}
		cout << " " << endl;
		for (i=1;i<=n;i++) {
			for (j=1;j<=n;j++) {
				imprimirb(b,n);
				cout << "Introduce el valor de B[" << i << "," << j << "]" << endl;
				cin >> b[i-1][j-1];
				system("cls");
			}
		}
		for (i=1;i<=n;i++) {
			for (j=1;j<=n;j++) {
				c[i-1][j-1] = a[i-1][j-1]+b[i-1][j-1];
			}
		}
		cout << "! Suma de Matrices !" << endl;
		imprimira(a,n);
		imprimirb(b,n);
		cout << " " << endl;
		imprimirc(c,n);
		system("pause");
		system("cls");
	} while (repetir1!="no");
	return 0;
}

void imprimira(int a[100][100], int n) {
	int k;
	int l;
	cout << " " << endl;
	cout << "Matriz A" << endl;
	cout << " " << endl;
	for (k=1;k<=n;k++) {
		cout << "| ";
		for (l=1;l<=n;l++) {
			cout << a[k-1][l-1] << " | ";
		}
		cout << " " << endl;
	}
}

void imprimirb(int b[100][100], int n) {
	int k;
	int l;
	cout << " " << endl;
	cout << "Matriz B" << endl;
	cout << " " << endl;
	for (k=1;k<=n;k++) {
		cout << "| ";
		for (l=1;l<=n;l++) {
			cout << b[k-1][l-1] << " | ";
		}
		cout << " " << endl;
	}
}

void imprimirc(int c[100][100], int n) {
	int k;
	int l;
	cout << " " << endl;
	cout << "Matriz A+B" << endl;
	cout << " " << endl;
	for (k=1;k<=n;k++) {
		cout << "| ";
		for (l=1;l<=n;l++) {
			cout << c[k-1][l-1] << " | ";
		}
		cout << " " << endl;
	}
}

