#include <stdio.h>
#include <string.h>
//ОШИБКА! Переполнение буфера
int main() {
    char str1[] = "This is very big string.\n";
    char str2[6];
    strcpy(str2, str1);
    //~ strncpy(str2, str1,sizeof(str2)-1);
    puts(str1);
    puts(str2);
    return 0;
}
