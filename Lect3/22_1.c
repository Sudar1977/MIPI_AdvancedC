#include <stdio.h>
#include <string.h>

int main() {
    char str1[] = "Small string.";
    char str2[15];
    strcpy(str2, str1);
    puts(str1);
    return 0;
}
