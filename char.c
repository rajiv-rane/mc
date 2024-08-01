#include<lpc21xx.h>
// a-z = 97 - 122
// A-Z = 65 -90
int main(void){
    unsigned char c[6]="abcABC";
    unsigned int i,j;
    for(i=0;i<6;i++){
        j=(int)c[i];
        if(j>=65 &&j<=90){
            j=j+32;
            c[i]=(char)j;
        }
        else{
            j=j-32;
            c[i]=(char)j;
        }
    }
}