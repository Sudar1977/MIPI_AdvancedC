/*Задача 1-5-Поиск последовательности бит
На вход программе подается беззнаковое 32-битное целое число N и натуральное число K (1 ≤ K ≤ 31). 
Требуется взять K подряд идущих битов числа N так, чтобы полученное число было максимальным. Программа должна вывести полученное число.

Данные на входе:    Два целых числа: 32-битное целое число N и натуральное число K (1 ≤ K ≤ 31). 
Данные на выходе:   Одно целое число 

Пример №1
Данные на входе:    2 1
Данные на выходе:   1

Пример №2
Данные на входе:    12 3
Данные на выходе:   6
*/

#include <stdio.h>
#include <stdint.h>

uint32_t worker(uint32_t ,int );
uint32_t slice_bits(uint32_t, int start, int length);

int main ()
{
int k;
uint32_t n, res;

    scanf("%u %d", &n, &k);

    res = worker (n, k);

    printf("%u\n", res);
    return 0;
}

uint32_t worker (uint32_t n, int k)
{
uint32_t max = 0;// minimal value for unsigned types
    for (int i = 0; i<=32-k ; i++)
    {
        uint32_t cur = slice_bits (n, i, k);
        if(cur > max)
            max = cur;
    }
    return max;
}

uint32_t slice_bits(uint32_t n, int start, int length)
{
    return(n & (~(uint32_t)0 >> (32-length))<<start ) >> start;
}
