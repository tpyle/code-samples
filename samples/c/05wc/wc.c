#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>


int main(int argc, char** argv) {
    if (argc > 2) {
        fprintf(stderr, "Error: Usage %s [<file>]\n", argv[0]);
        exit(1);
    }

    FILE* f = stdin;
    if (argc != 1) {
        f = fopen(argv[1], "r");
        if (f == NULL) {
            printf("Error: Failed to open %s\n", argv[1]);
            exit(2);
        }
    }

    char c;
    int count = 0;
    for (c = getc(f); c != EOF; c = getc(f)) {
        if (c == '\n') {
            count++;
        }
    }
    printf("%d\n", count);
    fclose(f);
}
