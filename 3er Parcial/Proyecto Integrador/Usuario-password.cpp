#include<iostream>
#include<ctime>
#include<stdlib.h>
using namespace std;
void esperar(double t);
string validacc(string usuario, string psw, string acceso);

int main() {
	string acceso;
	int i;
	int k;
	string psw;
	string pswb;
	string repetir1;
	string user;
	string usuario;
	acceso = "no";
	repetir1 = "si";
	do {
		system("cls");
		cout << "-- Ingrese al sistema --" << endl;
		cout << " " << endl;
		cout << "Usuario: >";
		cin >> usuario;
		cout << "Password: >";
		cin >> psw;
		acceso = validacc(usuario,psw,acceso);
		cout << " " << endl;
		if (acceso=="si") {
			cout << "Bienvenido al sistema " << usuario << "." << endl;
		} else {
			cout << "Usuario/Password no validos..." << endl;
		}
		esperar(3*1000);
		system("cls");
	} while (repetir1!="no");
	return 0;
}

string validacc(string usuario, string psw, string acceso) {
	int i;
	string pswb[10];
	string user[10];
	acceso = "no";
	user[1] = "Juan";
	user[2] = "Ricardo";
	user[3] = "Alex";
	pswb[1] = "123";
	pswb[2] = "456";
	pswb[3] = "789";
	for (i=1;i<=3;i++) {
		if (usuario==user[i]) {
			if (psw==pswb[i]) {
				acceso = "si";
			}
		}
	}
	return acceso;
}


void esperar(double t) {
	clock_t t0 = clock();
	double e = 0;
	do {
		e = 1000*double(clock()-t0)/CLOCKS_PER_SEC;
	} while (e<t);
}

