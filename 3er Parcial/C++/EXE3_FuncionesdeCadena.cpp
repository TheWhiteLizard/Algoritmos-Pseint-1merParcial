#include<iostream>
#include<cctype>
#include<stdlib.h>
#include <bits/stdc++.h> 
using namespace std;

string minusculas(string s);

void contarvocales(string cadena1, float size, string vocals, int i, int j, float numvocals);
void contarmayus(string cadena1, float size, string mayus, int i, int j, float nummayus);
string cadenainversa(string cadena1, float size, string cadinversa, int i);
string cadenainversase( string cadenase,float size2, string cadinversase,int i);
string encriptar(string cadena1, float size, string encriptada, int i);

int main() {
	string aux;
	int aux2;
	string cadena1;
	//char linea1[200];
	string cadinversa;
	string cadenase;
	string cadinversase;
	string encriptada;
	int i;
	int j;
	int k;
	int l;
	string mayus;
	char uncaracter;
	char espacio=' ';
	float num1;
	int nummayus;
	//int longitud;
	int numvocals;
	int opc1;
	string repetir1;
	int size;
	int size2;

	string vocals;
	repetir1 = "si";
	vocals = "aeiouáéíóúAEIOUÁÉÍÓÚ";
	mayus = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	cadinversa = "";
	cadena1 = "";
	i = 0;
	j = 1;
	numvocals = 0;
	nummayus = 0;
	char linea1[200]="  ";
	encriptada = "";
	aux = "";
	aux2 = 0;
	do {
		cout << "! Funciones de CADENA !" << endl;
		cout << "" << endl;
		cout << " 1) Leer cadena." << endl;
		cout << " 2) Numero de vocales en la cadena." << endl;
		cout << " 3) Imprimir al reves la cadena." << endl;
		cout << " 4) Contar cuantas mayusculas hay en la cadena." << endl;
		cout << " 5) Encriptar la cadena." << endl;
		cout << " 6) Indicar si la cadena es un Palindromo." << endl;
		cout << "" << endl;
		cout << "    Seleccione una opcion: > ";		
		cin >> opc1;
        cin.get();
        
        for (i=0;i<=200;i++){
        	linea1[i]=0;
		}
		
		if (cadena1=="") {
			if (opc1!=1) {
				
				cout << "    Escribe una cadena: " ;
				cin.getline(linea1,200,'\n');
				cadena1="";
				cadenase="";
				j=0;
				for (i=0;i<=199;i++) {
						k=linea1[i];
						if (k==0){
							j=j+1;
						} else {
							j=0;
						}
						if (j<=0) {
						cadena1 = (cadena1+linea1[i]);
						if(k!=32){
							cadenase = (cadenase+linea1[i]);
						}
						}
				}
				size = cadena1.size();
				size2 = cadenase.size();
			}
			
		}

		switch (opc1) {
		case 1:
			
			cout <<endl<< "    Escribe una cadena: " ;
			cin.getline(linea1,200,'\n');
			
			cadena1="";
			cadenase="";
			j=0;
			for (i=0;i<=199;i++) {
					k=linea1[i];
					if (k==0){
						j=j+1;
					} else {
						j=0;
					}
					if (j<=0) {
					cadena1 = (cadena1+linea1[i]);
					if(k!=32){
						cadenase = (cadenase+linea1[i]);
					}
					}
			}
			size = cadena1.size();
			size2 = cadenase.size();
			cout<<endl<<"    La cadena nueva es: "<<cadena1<<endl<<endl;
			break;
			
		case 2:
			contarvocales(cadena1,size,vocals,i,j,numvocals);
			break;
			
		case 3:
			cadinversa = cadenainversa( cadena1, size, cadinversa, i);
			cout <<endl<< "    La cadena al reves es:  > " <<cadinversa<< endl<<endl;
			break;
			
		case 4:
			contarmayus(cadena1,size,mayus,i,j,nummayus);
			break;
			
		case 5:
			encriptada = encriptar(cadena1,size,encriptada,i);
			cout << endl << "    La cadena encriptada es:   > "<<encriptada << endl<<endl ;
			break;
			
		case 6:
			
			cadinversase = cadenainversase( cadenase, size2, cadinversase, i);
			cout <<endl<< "    La Cadena: " << cadena1 <<endl;
			cout <<endl<< "    >> " << minusculas(cadenase) << "<>" << minusculas(cadinversase) << endl<<endl;
			if (minusculas(cadenase)==minusculas(cadinversase)) {
				cout << "    Si es un Palindro!!!" << endl<<endl;
			} else {
				cout << "    No es un Palindro!!!" << endl<<endl;
			}
			break;
		default:
			cout<<"opcion invalida...elige otra nueva.";
			break;
		}
		system("pause");
		if (opc1!=1) {
		}
		system("cls");
	} while (repetir1!="no");
	return 0;
}

void contarvocales(string cadena1, float size, string vocals, int i, int j, float numvocals) {
	for (i=0;i<=size;i++) {
		for (j=0;j<=19;j++) {
			if (cadena1.substr(i,i-i+1)==vocals.substr(j,j-j+1)) {
				numvocals = numvocals+1;
			}
		}
	}
	cout << "" << endl;
	cout << "    La Cadena: " << cadena1 << endl;
	cout << "" << endl;
	cout << "    Contiene " << numvocals << " vocales." << endl<<endl;
}

void contarmayus(string cadena1, float size, string mayus, int i, int j, float nummayus) {
	for (i=0;i<=size;i++) {
		for (j=0;j<=25;j++) {
			if (cadena1.substr(i,i-i+1)==mayus.substr(j,j-j+1)) {
				nummayus = nummayus+1;
			}
		}
	}
	cout << "" << endl;
	cout << "    La Cadena: " << cadena1 << endl;
	cout <<endl<< "    Contiene: " << nummayus << " mayusculas." << endl<<endl;
}

string cadenainversa(string cadena1, float size, string cadinversa, int i) {
	cadinversa = "";
	for (i=size-1;i>=0;i--) {
		cadinversa = (cadinversa+cadena1.substr(i,i-i+1));
	}
	return cadinversa;
	
}

string cadenainversase( string cadenase,float size2,  string cadinversase,int i) {
	cadinversase = "";
	for (i=size2-1;i>=0;i--) {
		cadinversase = (cadinversase+cadenase.substr(i,i-i+1));
	}
	return cadinversase;
}


string encriptar(string cadena1, float size, string encriptada, int i) {
	int j;
	char aux[200];
	strcpy(aux, cadena1.c_str());
	encriptada = "";
	size = cadena1.size();
	
	for (i=0;i<=size-1;i++) {
		j=aux[i];
		j=j+3;
		aux[i]=j;
		encriptada = (encriptada+aux[i]);	
	}
	return encriptada;
}

string minusculas(string s) {
	for(unsigned int i=0;i<s.size();i++)
		s[i] = tolower(s[i]);
	return s;
}

