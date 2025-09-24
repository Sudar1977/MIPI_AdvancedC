#include <stdio.h>
#include <stdlib.h>
#define BUFFER_SIZE 255
#define STACK_SIZE 255

char oper[STACK_SIZE] = {0}; // стек для операций + - * / ( )
int oend=0; // заполненность стека

void printStack(void)
{
    for(int i = 0;i<oend;i++)
    {
        printf("Stack: %c ",oper[i]);    
    }
    printf("\n");
}

void push(char v) {
    oper[oend++] = v;
    //~ printStack();
}
char pop() {
    if(oend<=0 || oend>=BUFFER_SIZE) {
        fprintf(stderr,"Stack overflow\n");
        exit(1);
    }
    oend--;
    //~ printStack();    
    return oper[oend];
}
_Bool emptyStack() {
    return oend==0;
}
_Bool isOperator(char c) {
    return c=='+' ||  c=='-' ||  c=='*' || c=='/';
}
int priority(char c) {
    if(c=='+' || c=='-')
        return 1;
    if(c=='*' || c=='/')
        return 2;
    return 0;
}

int main(void)
{
    char c;
    int pos=0;

    char answer[BUFFER_SIZE]={0};
    for(int i=0;i<BUFFER_SIZE;i++)
        answer[i]=0;
    printf("Input infix string: ");// ( 3 + 5 ) * 10 - 2 * 7 
    char str[1000];                //Answer: 3 5 + 10 * 2 7 * -
    int len=0;
    while((c=getchar())!='\n')//scanf("[^\n]",%s);
        str[len++]=c;
    str[len]=0;
    for(int i=0;i<len;i++)
    {
        //Если токен — число, то добавить его в очередь вывода        
        if(str[i]>='0' && str[i]<='9')//isDigit(str[i])
        {
            int number,size=0;
            for(number=0;str[i]>='0' && str[i]<='9';i++,size++)
            {
                number=number*10+str[i]-'0';
            }
            sprintf(answer+pos,"%d ",number);
            //~ printf("%d \n",number);            
            pos += size+1;
        }
        else
        {
            if(i>=len)
                break;
            c = str[i];
            //Если токен — оператор op1
            if(isOperator(c))
            {
                //Пока присутствует на вершине стека токен оператор op2, чей приоритет выше или равен приоритету op1
                while( !emptyStack() )
                {
                    char top = pop();
                    if(priority(top)>=priority(c))
                    {
                        //Переложить op2 из стека в выходную очередь
                        sprintf(answer+pos,"%c ",top);
                        pos += 2;
                    } else
                    { // isOperator(top) == false
                        push(top);
                        break;
                    }
                }
                //Положить op1 в стек
                push(c);
            }
            //Если токен — открывающая скобка, то положить его в стек
            else if( c=='(' )
            {
                push(c);
            }
            //Если токен — закрывающая скобка:
            else if( c==')' )
            {
                //Пока токен на вершине стека не открывающая скобка
                while(  (c=pop()) != '('  )
                {
                    //Переложить оператор из стека в выходную очередь.
                    sprintf(answer+pos,"%c ",c);//*pos++ = c,*pos++ = ' ';
                    //~ printf("%c \n",c);
                    pos += 2;
                }
            }
        }
    }
    //Если больше не осталось токенов на входе
    //Пока есть токены операторы в стеке:
    while( !emptyStack() )
    {
        sprintf(answer+pos,"%c ", pop());//Переложить оператор из стека в выходную очередь
        pos += 2;
    }
    printf("Answer: %s\n",answer);
    return 0;
}
