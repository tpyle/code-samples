#include <iostream>
#include <thread>

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

void* handle(void* arg) {
    char* end;
    double f = std::strtod((char*)arg, &end);
    if (*end != '\0') {
        std::cerr << "Invalid number: " << (char*)arg << std::endl;
        return NULL;
    }
    double result = findSqrt(f);

    std::cout << "sqrt(" << f << ") = " << result << std::endl;
    return NULL;
}

int main(int argc, char** argv) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <number> [number ...]" << std::endl;
        return 1;
    }

    std::thread *threads[argc - 1];

    for (int i = 1; i < argc; i++) {
        threads[i - 1] = new std::thread(handle, argv[i]);
    }

    for (int i = 1; i < argc; i++) {
        threads[i - 1]->join();
    }
}