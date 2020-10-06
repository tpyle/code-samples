#include <iostream>
#include <fstream>
#include <string>
#include <stdexcept>


int countLines(std::istream& in) {
    int count = 0;
    std::string line;
    while (std::getline(in, line)) {
        count++;
    }
    return count;
}


int main(int argc, char** argv) {
    if (argc > 2) {
        std::cerr << "Error: Usage " << argv[0] << " [<file>]" << std::endl;
        exit(1);
    }


    int lines = 0;

    if (argc > 1) {
        std::ifstream in(argv[1]);
        if (!in) {
            std::cerr << "Error: Failed to open " << argv[0] << std::endl;
            exit(2);
        }
        lines = countLines(in);
    } else {
        lines = countLines(std::cin);
    }

    std::cout << lines << std::endl;
}
