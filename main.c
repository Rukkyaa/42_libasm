#include "libasm.h"

int main() {
    char source[] = "Hello World !";
    char destination[20];

    ft_strcpy(destination, source);

    printf("La chaîne de caractères copiée est : %s\n", destination);

    return 0;
}
