#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>


int main(void)
{
    int32_t x = 18;
    (x & 1) ? printf("Odd") : printf("Even");
    return 0;
}
