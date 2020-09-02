#include <stdio.h>

#define LIMIT 5


int main(int argc, char** argv) {
    printf("   ");
    for (int i = 1; i <= LIMIT; i++) {
        printf("%-3d", i);
    }
    printf("\n");
    for (int a = 1; a <= LIMIT; a++) {
        printf("%-3d", a);
        for (int b = 1; b <= LIMIT; b++) {
            printf("%-3d", a*b);
        }
        printf("\n");
    }
}
