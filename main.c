#include "libasm.h"
#include <string.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
int main() {
    char *str = "Hello World!";
    char *str2 = ft_strdup(str);
    printf("strdup: %s\n", str2);
    free(str2);
    return 0;
}
