 #include <stdio.h>
#include <locale.h> //setlocale()
#include <inttypes.h>
#include <wchar.h> //�������� �������
int main(void)
{
    char* res = setlocale(LC_ALL,"");
    printf("%s\n",res);
    wchar_t str1[] = L"������";
    printf("str1 = %S\n", str1);
    printf("sizeof str1 = %llu\n", sizeof(str1));
    char str2[] = "������";
    printf("str2 = %s\n",str2);
    printf("sizeof str2 = %llu\n", sizeof(str2));
    char str3[] = "Hello!";
    printf("str3 = %s\n",str3);
    printf("sizeof str3 = %llu\n", sizeof(str3));
    return 0;
}
