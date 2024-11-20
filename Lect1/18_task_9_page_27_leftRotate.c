#include <stdio.h>
#include <stdint.h>

int leftRotate(uint32_t n, uint32_t rotate)
{
    return (n << rotate)|(n >> (32 - rotate));
}
int main () 
{
    int32_t a, rotate, res;
    
    scanf("%x %d",&a, &rotate); 
    res = leftRotate(a, rotate);
    printf("%x", res);

    return 0;
}
