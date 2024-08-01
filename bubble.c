#include<lpc21xx.h>
int main(void){
    unsigned long long temp,arr[4]={0x00000004,0x00000004,0x00000004,0x00000004};
    unsigned char i,j,n=4;
    for(i=0;i<n-1;i++) {
        for(j=0;j<n-1;j++){
            if(arr[j]>arr[j+1]){
                temp=arr[j];
                arr[j]=arr[j+1];
                arr[j+1]=temp;
            }
        }
    }
}