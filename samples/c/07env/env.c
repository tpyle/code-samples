#include <stdio.h>
#include <unistd.h>

void main() {
    int index = 0;
    while (__environ[index] != NULL) {
        printf("%s\n", __environ[index]);
        index++;
    }
}