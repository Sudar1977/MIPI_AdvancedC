#include <stdio.h>
#include <math.h>

typedef float(*function)(float);

//(-2, -1.5) (-1.5, -1) (-1, -0.5) (-0.5, 0)
float f(float x) {
    return 8*x*x*x*x + 32*x*x*x + 40*x*x + 16*x + 1;
}

int  signF(float x)
{
    return f(x)==0 ? 0 : (f(x) < 0 ? -1:+1);
}

float rootFindLineSearch(float xl, float xr, float eps, function f) {
    float x, minx = xl, nextstep;
    nextstep = fabs(xr-xl)/(1/eps); //разбиваем на отрезки интервал
    int stepcount=0; 
    for(x=xl; x<xr; x += nextstep, stepcount++) {
        if( fabs(f(x)) < fabs(f(minx)) )
            minx = x;
    }
    printf("Find Line Search root for %d steps\n",stepcount);
    return minx;
}


float rootFindDiv(float xl, float xr, float eps, function f) {
    int stepcount=0; //число шагов
    float xm;
    while(fabs(xr-xl)>eps) { //вещественный модуль разницы или floatabs
        stepcount++;
        xm=(xl+xr)/2; // середина отрезка
        if(signF(xl) != signF(xm)) //если знак отличается
            xr=xm;
        else
            xl=xm;
    }
    printf("Find Div Search root for %d steps\n",stepcount); //статистика
    return (xl+xr)/2;
}

 float rootFindDiv2(float xl, float xr, float eps, function f) {
    int stepcount=0; //число шагов
    float xm;
    while(fabs(xr-xl)>eps) { //вещественный модуль разницы
        stepcount++;
        xm=(xl+xr)/2; // середина отрезка
        if(f(xr)==0) { // нашли решение на правой границе
            printf("Find root for %d steps\n",stepcount);
            return xr;
        }        
        if(f(xl)==0) { // нашли решение на левой границе
            printf("Find root for %d steps\n",stepcount);
            return xl;
        }
        if(signF(xl) != signF(xm)) //если знак отличается
            xr=xm;
        else
            xl=xm;
    }
    printf("Find root for %d steps\n",stepcount); //статистика
    return (xl+xr)/2;
}

float rootFindChord(float xl, float xr, float eps, function f) {
    int stepcount=0; 
    while(fabs(xr - xl) > eps) {
        xl = xr - (xr - xl) * f(xr) / (f(xr) - f(xl));
        xr = xl - (xl - xr) * f(xl) / (f(xl) - f(xr));
        stepcount++;
    }
    printf("Find Chord Search root for %d steps\n",stepcount);
    return xr;
}

float rootFindTangent(float xn, float eps, function f, function df ) {
    float x1  = xn - f(xn)/df(xn);
    float x0  = xn;
    int stepcount=0;    
    while(fabs(x0-x1) > eps) {
        x0 = x1;
        x1 = x1 - f(x1)/df(x1);
        stepcount++;    
    }
    printf("Find Tangent Search root for %d steps\n",stepcount);   
    return x1;
}

float df(float x) {
    return 32*x*x*x + 96*x*x + 80*x + 16;
}

int main()
{


float points[4][2] = {{-2, -1.5},{-1.5, -1},{-0.7, 0.5},{-0.01, 0}};
    for(int i=0;i<4;i++)
    {
        printf("------------------Root%d----------------------\n",i);
        printf("Find Line Search root  = %f\n", rootFindLineSearch(points[i][0],points[i][1],0.001,f));
        printf("Find Div Search root   = %f\n", rootFindDiv(points[i][0],points[i][1],0.001,f));    
        printf("Find Chord Search root = %f\n", rootFindChord(points[i][0],points[i][1],0.001,f));         
        printf("Find Find Tangent root = %f\n", rootFindTangent(points[i][0],0.001,f,df));            
    }
    
    return 0;    
}

