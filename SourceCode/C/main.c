#include <skeinhash.h>
#include <stdio.h>


int main(){

    char input[80] = {0};
    char output[64];
    skeinhash(output, input);
    for ( int i = 0 ; i < 32 ; i++){
        printf("%x",output[i]);
    }


}
