//7. Напишите функцию, которая сбрасывает установленный крайний правый бит целого числа

#include <stdio.h>
#include <stdint.h>

int32_t unset_rightmost (uint32_t n)
{
/*
  11000 0000 0000 0000
& 10111 1111 1111 1111
  ==== ==== ==== ====
= 10000 0000 0000 0000
*/
    return n & (n - 1);
}

int main ()
{
    int32_t a, res;

    scanf("%d",&a);
    res = unset_rightmost(a);
    printf("%d", res);

    return 0;
}
