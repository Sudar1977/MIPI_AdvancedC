#include <Windows.h>
#include <stdio.h>

double getCPUTime(void)
{ /* Windows */
FILETIME createTime, exitTime, kernelTime, userTime;
  if(GetProcessTimes(GetCurrentProcess(),
       &createTime, &exitTime, &kernelTime,
       &userTime) != -1 )
  {
    SYSTEMTIME userSystemTime;
    if(FileTimeToSystemTime(&userTime,
          &userSystemTime)!= -1 )
    return (double)userSystemTime.wHour * 3600.0 +
           (double)userSystemTime.wMinute * 60.0 +
           (double)userSystemTime.wSecond +
           (double)userSystemTime.wMilliseconds
               / 1000.0;
  }
  return -1; /* Failed. */
}
int main(int argc, char **argv)
{
  double startTime, endTime;
  startTime = getCPUTime( );
  for(int i=0;i<600000000;i++)
  {}
  endTime = getCPUTime( );
  printf( "CPU time used = %lf\n",
           (endTime-startTime) );
  return 0;
}
