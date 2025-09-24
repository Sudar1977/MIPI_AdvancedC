#include <stdio.h>
#include <math.h>


int binpow (int n, int pow)
{
    if (pow == 0)
        return 1;
    if ( (pow % 2) == 1) // нечетная степень (pow & 1)
        return binpow (n, pow-1) * n;
    else { // четная степень
        int b = binpow (n, pow/2);// pow>>1
        return b * b;
    }
}

int binpow2(int a, int n) {
    int res = 1;
    while (n != 0) {
    counter2++;
        if (n & 1)
            res = res * a;
        a = a * a;
        n >>= 1;
    }
    return res;
}

int main(void)
{
    int n,p;
    scanf("%d%d", &n,&p);
    printf("n=%d,pow=%d binpow=%d mpow %f\n",n,p,binpow(n,p),pow(n,p));
    printf("n=%d,pow=%d binpow2=%d mpow %f\n",n,p,binpow2(n,p),pow(n,p));

    return 0;
}


