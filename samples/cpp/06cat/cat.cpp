#include <iostream>
#include <fstream>
#include <string>
#include <stdexcept>


void readLines(std::istream& in) {
    std::string line;
    while (std::getline(in, line)) {
        std::cout << line << std::endl;
    }
}


int main(int argc, char** argv) {
    if (argc > 2) {
        std::cerr << "Error: Usage " << argv[0] << " [<file>]" << std::endl;
        exit(1);
    }

    if (argc > 1) {
        std::ifstream in(argv[1]);
        if (!in) {
            std::cerr << "Error: Failed to open " << argv[0] << std::endl;
            exit(2);
        }
        readLines(in);
    } else {
        readLines(std::cin);
    }

}
