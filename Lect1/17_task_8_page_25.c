#include <stdio.h>
#include <stdint.h>

_Bool isPowerOfFour(uint32_t n)
{
	return n != 0 && ((n&(n-1)) == 0) && !(n & 0xAAAAAAAA);
}

int main () 
{
	int32_t a;
	
	scanf("%d",&a);

	printf("%s", isPowerOfFour(a) ? "YES" : "NO");

	return 0;
}