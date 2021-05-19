#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>


double findSqrt(double number) {
    double x = number;
    double y = 1.0;
    const double e = 0.0000001;
    while (x - y > e) {
        x = (x + y)/2;
        y = number / x;
    }
    return x;
}

void* handleArgument(void* arg) {
    char* eptr;
    double number = strtod((char*)arg, &eptr);


    if (*eptr != 0) {
        printf("Error: Expected to receive a number, recieved %s\n", (char*)arg);
        return NULL;
    }
    printf("%f => %f\n", number, findSqrt(number));
    return NULL;
}


int main(int argc, char** argv) {
    if (argc < 2) {
        printf("Error: Usage %s <number> [<number> ...]\n", argv[0]);
        return 1;
    }

    pthread_t* threadIDs = malloc(sizeof(pthread_t) * argc);

    for (int i = 1; i < argc; i++) {
        pthread_create(&threadIDs[i], NULL, handleArgument, (void*)argv[i]);
    }

    for (int i = 1; i < argc; i++) {
        pthread_join(threadIDs[i], NULL);
    }
}
