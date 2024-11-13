#include <stdio.h>
#include <stdint.h>

int div1IfEven(int a) {
	return a - !(a&0x1);
}

int main () 
{
	int32_t a, res;
	
	scanf("%d",&a);
	res = div1IfEven(a);
	printf("%d", res);

	return 0;
}