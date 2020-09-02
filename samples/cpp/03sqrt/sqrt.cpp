#include <iostream>


double findSqrt(double number) {
    double x = number;
    double y = 1.0;
    const double e = 0.0000001;
    while (x - y > e) {
        x = (x + y) / 2;
        y = number / x;
    }
    return x;
}


int main(int argc, char** argv) {
    if (argc != 2) {
        std::cerr << "Error: Usage " << argv[0] << " <number>" << std::endl;
        return 1;
    }
    char* end;
    double f = std::strtod(argv[1], &end);
    if (*end != 0) {
        std::cout << "Error: Expected to receive a double. Received " << argv[1] << std::endl;
        exit(2);
    }
    std::cout << findSqrt(f) << std::endl;
}
