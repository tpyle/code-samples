#include <stdio.h>
#include <stdlib.h>


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


int main(int argc, char** argv) {
    if (argc != 2) {
        printf("Error: Usage %s <number>\n", argv[0]);
        return 1;
    }
    char* eptr;
    double number = strtod(argv[1], &eptr);


    if (*eptr != 0) {
        printf("Error: Expected to receive a number, recieved %s\n", argv[1]);
        return 2;
    }
    printf("%f\n", findSqrt(number));
}
