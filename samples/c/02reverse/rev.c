#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
    if (argc == 1) {
        fprintf(stderr, "Error: Expected to receive at least 1 argument.\n");
        exit(1);
    }

    for (int i = argc-1; i > 0; i--) {
        printf("%s", argv[i]);
        if (i > 1) {
            printf(" ");
        }
    } 
    printf("\n");
}
