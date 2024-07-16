#include <stdio.h>

char s1[] = "Hello ";
char s2[] = "world!";

int main(void)
{
    char c;
    printf("===Enter q to quit===\n");
    do
    {
        printf("Enter a symbol\n");
        scanf("%c", &c);
        printf("%c\n", c);
    }
    while (c != 'q');
    return 0;
}
