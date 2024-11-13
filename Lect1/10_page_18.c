#include <stdio.h>
#include <inttypes.h>

int main(void)
{
    int32_t a, sign;//-1 = 0b1111 1111
    scanf("%d",&a);
    sign = a>>31; // записываем маску >>8 = 1111 1111
    printf("%x\n",a);   
    a = a^sign; // если число отрицательное то инверсия
    //~ a ^= sign; // если число отрицательное то инверсия
    printf("%x\n",a);
    a = a + (sign&0x1); // если число было отрицательное то +1
    //~ a += sign&0x1; // если число было отрицательное то +1
    printf("%d\n",a);
    return 0;
}
