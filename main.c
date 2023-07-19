#include "libasm.h"
#include <string.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>
int main() {
    // Test for read
    char buf[100];
    int fd = open("Maekefile", O_RDONLY);
    int ret = ft_read(fd, buf, 100);
    printf("ft_read: %d\n", ret);
    printf("errno: %d\n", errno);
    printf("buf: %s\n", buf);
    return 0;
}
