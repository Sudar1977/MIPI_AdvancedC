#include <stdio.h>

%:define quote(x) %:x
//#define quote(x) #x

int main()
{
    printf(quote("Hello World!"));
    return 0;
}
