#include <iostream>
#include <string>
#include <stdexcept>
#include <cmath>


bool isPrime(int number) {
    int limit = std::sqrt(number);
    for (int i = 2; i <= limit; i++) {
        if (number % i == 0) {
            return false;
        }
    }
    return true;
}


int main(int argc, char** argv) {
    if (argc < 2) {
        std::cerr << "Error: Usage " << argv[0] << " <number> [<number> ...]" << std::endl;
        exit(1);
    }

    for (int i = 1; i < argc; i++) {
        std::string current(argv[i]);
        size_t end = 0;
        int number = 0;

        try {
            number = std::stoi(current, &end, 10);
        } catch (std::invalid_argument& e) {
            std::cerr << "Error: Expected an integer. Received '" << current << "'" << std::endl;
            exit(2);
        } catch(std::out_of_range& e) {
            std::cerr << "Error: Received an integer (" << current << ") that's too large." << std::endl;
            exit(2);
        }


        if (end != current.length()) {
            std::cerr << "Error: Expected to receive just an integer. Recevied '" << current << "'" << std::endl;
            exit(2);
        }

        std::cout << number << " => " << (isPrime(number) ? "true" : "false") << std::endl;
    }
}
