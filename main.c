#include "libasm.h"
#include <string.h>
#include <stdio.h>

int main() {
    char *source = "Chichi";
    char *destination = "zhichi";

    printf("My res: %d\n", ft_strcmp(source, destination));
    printf("Res: %d\n", strcmp(source, destination));
    return 0;
}
