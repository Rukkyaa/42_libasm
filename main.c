#include "libasm.h"

int main() {
    const char *str = "Hello world !";
    size_t length = ft_strlen(str);
    
    printf("Length of the string: %zu\n", length);
    
    return 0;
}
