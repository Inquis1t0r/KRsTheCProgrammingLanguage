#include <stdio.h>
//gcc 5.1
main() {
   printf("hello, world\x"); //error: \x used with no following hex digits
}
