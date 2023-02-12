#include<iostream>
#include<conio.h>
#include"clase.h"
using namespace std;


struct Alumno{
	double matri;
	char nom[10];
	int edad;
	float cal1,cal2,cal3,prom;
};
void titulos();
void entrada(Alumno a[]);
void calcular (Alumno a[], int lim);

int main(){
	Alumno ();
	titulos();
		
	entrada(b,2);
	calcular(b,2);
	
getch();		
}

void titulos(){
	gotoxy(10,5);cout<<"Matricula";
	gotoxy(25,5);cout<<"Nombre";
	gotoxy(40,5);cout<<"Edad";
	gotoxy(50,5);cout<<"Cal1";
	gotoxy(60,5);cout<<"Cal2";
	gotoxy(65,5);cout<<"Cal3";
}

void entrada(Alumno a){
	int x;
	for(x=0;x<lim;x++){
	
	gotoxy(10,6+x);cin>>a[x].matri;
	gotoxy(25,6+x);cin>>a[x].nom[10];
	gotoxy(40,6+x);cin>>a[x].edad;
	gotoxy(50,6+x);cin>>a[x].cal1;
	gotoxy(55,6+x);cin>>a[x].cal2;
	gotoxy(60,6+x);cin>>a[x].cal3;
	
	}	
}
 void calcular (Alumno a[],int lim){
  int x;
   for(x=0;x<lim;x++){
   a[x].prom=(a[x.cal1]+a[x.cal2]+a[x.cal3]+)
   gotoxy(65,6++);cout<<a[x].prom;
 }
