#include <stdio.h>
#include <inttypes.h>

void changeSign(float *f) {
    union {
        float f;
        uint32_t u;
    } tmp;
    tmp.f = *f;
    tmp.u = tmp.u ^ 0x80000000;//1000 0000 0000 0000 0000 0000 0000 0000 
    *f = tmp.f;
}


int main(void)
{
    float f = 4.0;
    changeSign(&f);
    printf("%f\n",f);
    return 0;
}
