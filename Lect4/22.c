#include <stdio.h>
#include <sys/resource.h>
#include <sys/time.h>

enum {SIZE=2001};
struct timespec tstart, tstop;
int a[SIZE];//{1,2,…,1000,12345,1,2,…,1000};      

int main(void) 
{   
    struct rusage usage;
    struct timeval startu, endu, starts, ends;
    int same = 0;
    for(int i=0;i<=1000;i++) 
       a[i] = i,a[i+1001]=i;
    a[1000]=12345;
    getrusage(RUSAGE_SELF, &usage);
// измерение в режиме пользователя
    startu = usage.ru_utime;
// измерение в режиме системы 
    starts = usage.ru_stime;
    same = 0;
    for (size_t i=0; i<SIZE; i++)
        same ^= a[i];
    getrusage(RUSAGE_SELF, &usage);
    endu = usage.ru_utime;
    ends = usage.ru_stime;
    printf("Started at user mode: %ld.%d\n", startu.tv_sec, startu.tv_usec);
    printf("Ended at user mode: %ld.%d\n", endu.tv_sec, endu.tv_usec);
    printf("Started at system mode: %ld.%d\n", starts.tv_sec, starts.tv_usec);
    printf("Ended at system mode: %ld.%d\n", ends.tv_sec, ends.tv_usec);
    return 0;
}


