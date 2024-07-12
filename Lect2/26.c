#include <stdio.h>

int main(void)
{
    int *p1;
    int m = 100;//mmap
    p1 = m; // ОШИБКА
//вместо адреса присвоили //значение
    return 0;
}
