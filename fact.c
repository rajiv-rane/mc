#include<lpc21xx.h>
int main(void){
    unsigned long n=8,fact=1;
    unsigned int i;
    if(n==0){
        fact=1;
    }
    else if(n>0){
        for(i=1;i<=n;i++){
            fact=fact*i;
        }
    }
}