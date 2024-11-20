#include <stdio.h>

int func(int n) {
    printf("Hello func %d\n",n);
    return n+1;
}
int main()
{
    int (*fp)(int);
    fp = func;
    fp(128);
    return 0;
}
