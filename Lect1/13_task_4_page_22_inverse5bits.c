#include <stdio.h>
#include <stdint.h>

int32_t inverse5bits(int32_t n)
{
    return n ^ 0x1F;
}

int main ()
{
    int32_t a = 0xFF;
    printf("%x\n", a);
    a = inverse5bits(a);
    printf("%x\n", a);
    a = inverse5bits(a);
    printf("%x\n", a);

    return 0;
}
