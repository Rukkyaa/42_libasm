#include "libasm.h"
#include <string.h>
#include <stdio.h>

int main() {
    char *source = "Hello World !";
    char *destination = "Hello";

    // ft_strcpy(destination, source);
    printf("Res: %d\n", ft_strcmp(source, destination));
    printf("Res: %d\n", strcmp(source, destination));
    // printf("La chaîne de caractères copiée est : %s\n", destination);

    return 0;
}
