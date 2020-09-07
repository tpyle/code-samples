#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>


int isPrime(int number) {
    int limit = sqrt(number);
    for (int i = 2; i <= limit; i++) {
        if (number % i == 0) {
            return 0;
        }
    }
    return 1;
}


int main(int argc, char** argv) {
    if (argc < 2) {
        fprintf(stderr, "Error: Usage %s <number> [<number> ...]\n", argv[0]);
        exit(1);
    }

    for (int i = 1; i < argc; i++) {
        int number = atoi(argv[i]);

        if (number == 0 && strcmp("0", argv[i]) != 0) {
            fprintf(stderr, "Error. Expected to receive an integer. Recevied %s", argv[i]);
            exit(2);
        }

        printf("%d => %s\n", number, isPrime(number) ? "true" : "false");
    }
}
