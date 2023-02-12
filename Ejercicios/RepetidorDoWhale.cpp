#include<iostream>
#include<stdlib.h>
using namespace std;

int main(){
	
	int x;
	string cadena;
	cadena=" =>";
	string repetir;
		
	do{
	
	for(x=100;x>0;x=x-2){
	cout<<cadena<<x<<endl;
	cadena=" "+cadena;
	system("cls");
     }
     
    
     cout<<"Desea Repetir? (si/no)"<<endl;
     cin>>repetir;
     
}while(repetir=="si");
	return 0;
}




