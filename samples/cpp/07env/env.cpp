#include <iostream>

extern char** environ;

int main() {
    int index = 0;
    
    while (environ[index]) {
        std::cout << environ[index++] << std::endl;
    }
}