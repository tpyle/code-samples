#include <iostream>
#include <string>


int main(int argc, char** argv) {
    if (argc == 1) {
        std::cerr << "Error: Expected to receive at least 1 argument" << std::endl;
        exit(1);
    }

    for (int i = argc-1; i > 0; i--) {
        std::cout << argv[i];
        if (i > 1) {
            std::cout << " ";
        }
    }
    std::cout << std::endl;
}
