#include <stdio.h>

extern size_t ft_strlen(const char *s); // Déclaration de la fonction assembleur

int main() {
    const char *str = "Hello world !";
    size_t length = ft_strlen(str);
    
    printf("Length of the string: %zu\n", length);
    
    return 0;
}
