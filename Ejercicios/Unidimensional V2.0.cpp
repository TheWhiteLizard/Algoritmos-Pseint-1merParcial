#include<iostream>
#include<conio.h>
#include<cmath> 
#include<stdlib.h>
using namespace std;

//PROTOTIPO DE FUNCION
 void entrada(float a[], int lim);
 void suma(float sumaResult[],float a[],float b[],int lim);
 void resta(float restaResult[],float a[],float b[],int lim);
 void multi(float multiResult[],float a[],float b[],int lim);
 void divi(float diviRsult[],float a[],float b[],int lim);
  

int main() {
	
	float a[100],b[100],Result[100];
    int lim,opc;
    string repeat;
	do {
		
	cout << "Cual es el valor de lim?: " << endl;
	cin >>lim;
	cout <<endl<< "Introduce los valores de A: " << endl;
	entrada(a,lim);
	cout <<endl<< "Introduce los valores de B: " << endl;
	entrada(b,lim);
	
	cout<<endl<<"Elige que Operacion Realizar"<<endl;
	cout<<endl<<"1)Suma"<<endl;
	cout<<endl<<"2)Resta"<<endl;
	cout<<endl<<"3)Multipliacacion"<<endl;
	cout<<endl<<"4)Division"<<endl;
	cin>>opc;
	switch(opc){
		case 1:
			suma(Result,a,b,lim);
			break;
		case 2:	
			resta(Result,a,b,lim);
			break;
		case 3:	
			multi(Result,a,b,lim);
			break;
		case 4:
			divi(Result,a,b,lim);
			break;
	}
	cout<<endl<<"Deseas Repetir el Programa? (si/no)"<<endl;
	cin>>repeat;
	system("cls");
	}while(repeat=="si");
	
	getch();
	return 0;
}
//Definicion de Funcion
void entrada(float a[], int lim){
	int x;
	
	for (x=1;x<=lim;x++){
		cout <<"Introduce el valor para el indice ["<<x<<"] :";
		cin >>a[x];
		}
}
//Definicion de una Funcion x2
void suma(float Result[], float a[], float b[], int lim){
	int x;
	cout <<endl;
	for (x=1;x<=lim;x++){
		Result[x]= a[x] + b[x];
		cout <<"La Suma de a["<<x<<"]+b["<<x<<"] es: "<<Result[x]<<endl;        	
		}
}
void resta(float Result[], float a[],float b[], int lim){
	int x;
	cout<<endl;
	for(x=1;x<=lim;x++){
		Result[x]= a[x]-b[x];
		cout<<"La resta de a["<<x<<"]+b["<<x<<"] es: "<<Result[x]<<endl;
	}

}
void multi(float Result[], float a[],float b[], int lim){
	int x;
	cout<<endl;
	for(x=1;x<=lim;x++){
		Result[x]= a[x]*b[x];
		cout<<"La multiplicacion de a["<<x<<"] x b["<<x<<"] es: "<<Result[x]<<endl;
	}

}
void divi(float Result[], float a[],float b[], int lim){
	int x;
	cout<<endl;
	for(x=1;x<=lim;x++){
		Result[x]= a[x]/b[x];
		cout<<"La divison de a["<<x<<"] entre b["<<x<<"] es: "<<Result[x]<<endl;
	}
}









