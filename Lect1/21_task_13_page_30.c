#include <stdio.h>
#include <stdint.h>

uint32_t reverseBits(uint32_t num)
{
	uint32_t NO_OF_BITS = sizeof(num) * 8;
	uint32_t reverse_num = 0;
	int32_t i;
	for (i = 0; i < NO_OF_BITS; i++)
	{
		if((num & (1 << i)))
			reverse_num |= 1 << ((NO_OF_BITS - 1) - i);
	}
	return reverse_num;
}
uint32_t bitRevers(uint32_t n) {
	uint32_t r=0;
	while(n) {
		r <<= 1;
		r |= n&0x1;
		n >>= 1;
	}
	return r;
}

int main () 
{
	uint32_t a, res;
	
	scanf("%u",&a);
	//res = reverseBits(a);
	res = bitRevers(a);
	printf("%u", res);

	return 0;
}