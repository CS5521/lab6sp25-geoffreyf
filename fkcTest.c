#include "types.h"
#include "stat.h"
#include "user.h"
int
main(int argc, char * argv[])
{
   printf(1, "number of forks when program starts: %d\n", fkc(1));
   fork();
   fork();
   printf(1, "number of forks after two more forks: %d\n", fkc(1));
   printf(1, "number of forks after forks cleared: %d\n", fkc(0));
   fork();
   fork();
   fork();
   printf(1, "number of forks after three more forks: %d\n", fkc(1));
   wait();
   wait();
   wait();
   wait();
   wait();
   exit();
}
