//6. Напишите функцию, которая вычитает единицу в случае, если число чётное, или не меняет его. Использовать операторы сравнения запрещено
#include <stdio.h>
#include <stdint.h>

int div1IfEven(int a) {
    return a - !(a&0x1);
}

int main ()
{
    int a, res;

    scanf("%d",&a);
    res = div1IfEven(a);
    printf("%d", res);

    return 0;
}
