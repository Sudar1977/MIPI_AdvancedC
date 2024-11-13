#include <stdio.h>
#include <stdint.h>

int32_t unset_rightmost (uint32_t n)
{
	return n & (n - 1);
}

int main () 
{
	int32_t a, res;
	
	scanf("%d",&a);
	res = unset_rightmost(a);
	printf("%d", res);

	return 0;
}