#include <stdio.h>
#include <stdint.h>

int rightRotate(uint32_t n, uint32_t rotate)
{
	return (n >> rotate)|(n << (32 - rotate));
}
int main () 
{
	int32_t a, rotate, res;
	
	scanf("%d %d",&a, &rotate);
	res = rightRotate(a, rotate);
	printf("%d", res);

	return 0;
}