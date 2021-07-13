#include <dirent.h>
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
#include <unistd.h>
#include <cstring>

void cat_file(std::string filename) {
    /**
     * This function will print the content of a file.
     * 
     */
    std::ifstream file(filename);
    if (file.is_open()) {
        std::string line;
        while (getline(file, line)) {
            std::cout << line << std::endl;
        }
        file.close();
    }
}

void print_current_directory() {
    /**
     * This function will print the current directory.
     * 
     */
    char* current_directory = getcwd(NULL, 0);
    std::cout << current_directory << std::endl;
}

void list_files() {
    /**
     * This function will list the files in the current directory.
     *  
     */
    char* current_directory = getcwd(NULL, 0);
    DIR *dir;
    struct dirent *ent;
    if ((dir = opendir(current_directory)) != NULL) {
        while ((ent = readdir(dir)) != NULL) {
            if (strcmp(ent->d_name, ".") != 0 && strcmp(ent->d_name, "..") != 0) {
                std::cout << ent->d_name << std::endl;
            }
        }
        closedir(dir);
    }
}

void change_directory(std::string directory) {
    /**
     * This function will change the current directory.
     * 
     */
    chdir(directory.c_str());
}

bool is_whitespace(char c) {
    /**
     * This function determines whether a character is whitespace.
     * 
     */
    return (c == ' ' || c == '\t' || c == '\n' || c == '\r');
}

std::vector<std::string> split_command(std::string* argv) {
    /**
     * This function splits a command line std::string into a vector of arguments.
     * 
     */
    std::vector<std::string> args;
    std::string arg;
    bool in_arg = false;
    for (unsigned int i = 0; i < argv->size(); i++) {
        if (is_whitespace(argv->at(i))) {
            if (in_arg) {
                args.push_back(arg);
                arg = "";
                in_arg = false;
            }
        } else {
            arg += argv->at(i);
            in_arg = true;
        }
    }
    if (in_arg) {
        args.push_back(arg);
    }
    return args;
}

int main() {
    /**
     * Reads input from the user and executes specified commands.
     * 
     */

    std::string command;
    
    while (true) {
        std::cout << "shell> ";
        if (!getline(std::cin, command)) {
            break;
        }
        if (command == "exit") {
            break;
        }
        std::vector<std::string> args = split_command(&command);
        if (args.size() == 0) {
            continue;
        }
        if (args.at(0) == "cd") {
            if (args.size() == 1) {
                change_directory(".");
            } else if (args.size() == 2) {
                change_directory(args.at(1));
            } else {
                std::cout << "cd: too many arguments" << std::endl;
            }
        } else if (args.at(0) == "ls") {
            if (args.size() == 1) {
                list_files();
            } else {
                std::cout << "ls: too many arguments" << std::endl;
            }
        } else if (args.at(0) == "cat") {
            if (args.size() == 2) {
                cat_file(args.at(1));
            } else {
                std::cout << "cat: too many arguments" << std::endl;
            }
        } else if (args.at(0) == "pwd") {
            print_current_directory();
        } else {
            std::cout << "unknown command" << std::endl;
        }
    }
}