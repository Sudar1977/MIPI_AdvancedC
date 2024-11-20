#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>


int main(void)
{
    int32_t x = 3, y = 8;//0b0011 = 3, 0b1000 = 8
    (x &  y) ? printf("True \n") : printf("False \n");//0b0011 & 0b1000 = 0b0000
    (x && y) ? printf("True \n") : printf("False \n");//0b0011 && 0b1000 = 0b0001

    return 0;
}
