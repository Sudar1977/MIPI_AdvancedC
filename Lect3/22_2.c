#include <stdio.h>
#include <string.h>
//ОШИБКА! Переполнение буфера
int main() {
    char str1[] = "This is very big string.";
    char str2[15];
    strcpy(str2, str1);
    puts(str1);
    return 0;
}
