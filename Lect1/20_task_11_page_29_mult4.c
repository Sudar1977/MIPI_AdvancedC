#include <stdio.h>
#include <stdint.h>
union floatbit {
    float value;
    struct {
        uint32_t mant : 23;
        uint32_t exp : 8;
        uint32_t sign : 1; 
    } bit;
} f;

float mult4(float f) {
    union floatbit tmp;
    tmp.value = f;  
    tmp.bit.exp += 2;
    return tmp.value;
}
int main () 
{
    float a, res;
    
    scanf("%f",&a);
    res = mult4(a);
    printf("%.3f", res);

    return 0;
}
