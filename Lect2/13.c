#include <stdio.h>
#include <inttypes.h>


//может сравнивать любые указатели
_Bool is_same(void *a, void *b)
{
    //~ return *a = *b; // ОШИБКА! void * нельзя разыменовывать
    return a == b; // Можно только сравнивать
}

int main(void)
{
    int a=5;
    int b=5;
    int *pa = &b;
    float *pc=NULL;
    is_same(&a, pc) ? printf("Same\n") : printf("Different\n");
    return 0;
}
