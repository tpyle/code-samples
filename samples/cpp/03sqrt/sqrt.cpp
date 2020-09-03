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


    if (argc < 2) {
        std::cerr << "Error: Usage " << argv[0] << " <number> [number ...]" << std::endl;
        return 1;
    }

    for (int i = 1; i < argc; i++) {

        char* end;
        double f = std::strtod(argv[i], &end);
        if (*end != 0) {
            std::cout << "Error: Expected to receive a double. Received " << argv[i] << std::endl;
            exit(2);
        }
        std::cout << f << " => " << findSqrt(f) << std::endl;

    }
}
