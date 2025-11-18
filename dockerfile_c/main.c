#include <stdio.h>
#include <string.h>

int main() {
    char input[100];
    
    if(scanf("%s",input) != 1){
        return 1; //input.txtに文字がなかったら、エラーを返す
    }

    printf("%s\n",input);
    return 0;
}