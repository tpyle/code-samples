#include <iostream>
#include <iomanip>
#include <string>

#define LIMIT 5


int main(int agrc, char** argv) {
    std::string padding(3,  ' ');
    std::cout << std::left << padding;
    for (int i = 1; i <= LIMIT; i++) {
        std::cout << std::setfill(' ') << std::setw(3) << i;
    }
    std::cout << std::endl;

    for (int a = 1; a <= LIMIT; a++) {
        std::cout << std::setfill(' ') << std::setw(3) << a;
        for (int b = 1; b <= LIMIT; b++) {
            std::cout << std::setfill(' ') << std::setw(3) << a * b;
        }
        std::cout << std::endl;
    }
}
