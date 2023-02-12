#include <iostream>
using namespace std;
int main (){
    int x, num=0, conta=0;
    cout<< "Escribe un numero ";
    cin>> num;
    for(x=1; x<num; x++){
        if(num%x==0){
            conta=conta+1;
        }
    }
    if(conta>2){
        cout<< "El numero no es primo";
    }
    else{
        cout<<"El numero es primo";
    }
    return 0;
}
