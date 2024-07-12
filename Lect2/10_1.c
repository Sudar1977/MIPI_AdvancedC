    #include <stdio.h>

int main(void)
{
/* Нет ошибки */
    int *p = NULL;
    //~ if(p == &(*p))
    //~ if(&(*p) != NULL)
    //~ if(p == NULL)
    if(!p)//(p!=0) (*p)
        printf("True\n");
    return 0;
}
