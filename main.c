#include "libasm.h"
#include <string.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>

int main() {
    // write(-1, "Hello World!\n", 13);
    // printf("errno: %d\n", errno);
    printf("%ld\n", ft_write(1, "Hello World!\n", 13));
    printf("errno: %d\n", errno);
    return 0;
}
