#include <dirent.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define TRUE 1
#define FALSE 0

void catFile(char *filename) {
    FILE *fp;
    char buf[1024];
    int n;
    if ((fp = fopen(filename, "r")) == NULL) {
        fprintf(stderr, "catFile: fopen: %s\n", strerror(errno));
        exit(1);
    }
    while ((n = fread(buf, 1, 1024, fp)) > 0) {
        fwrite(buf, 1, n, stdout);
    }
    if (ferror(fp)) {
        fprintf(stderr, "catFile: fread: %s\n", strerror(errno));
        exit(1);
    }
    fclose(fp);
}

void listFiles() {
    /**
     * Lists the files in the current directory.
     * 
     */
    DIR *dp;
    struct dirent *dirp;
    if ((dp = opendir(".")) == NULL) {
        fprintf(stderr, "listFiles: opendir: %s\n", strerror(errno));
        exit(1);
    }
    while ((dirp = readdir(dp)) != NULL) {
        printf("%s\n", dirp->d_name);
    }
    closedir(dp);
}

void changeDirectory(char* path) {
    /**
     * Changes the current directory to the specified path.
     * 
     */
    if (chdir(path) == -1) {
        fprintf(stderr, "changeDirectory: chdir: %s\n", strerror(errno));
        exit(1);
    }
}

u_int8_t isWhiteSpace(char character) {
    /**
     * Determines if a character is whitespace
     * 
     */
    char whitespaceCharacters[] = {' ', '\t', '\n', '\r'};
    int length = sizeof(whitespaceCharacters) / sizeof(whitespaceCharacters[0]);
    for (int i = 0; i < length; i++) {
        if (character == whitespaceCharacters[i]) {
            return TRUE;
        }
    }
    return FALSE;
}

void printWorkingDirectory() {
    /**
     * Prints the current working directory.
     * 
     */
    char *path = getcwd(NULL, 0);
    printf("%s\n", path);
    free(path);
}

size_t length(char* string) {
    int length = 0;
    while (string[length++] != 0);
    return length-1;
}

char* copyString(char* string) {
    size_t strlen = length(string);
    char* strCopy = malloc(sizeof(char) * strlen);
    int ind = 0;
    while (string[ind] != 0) {
        strCopy[ind] = string[ind];
        ind++;
    }
    strCopy[ind] = 0;
    return strCopy;
}

char* stripString(char* string) {
    size_t strlen = length(string);
    char* strCopy = copyString(string);
    //printf("%d\n", strlen);
    size_t cIndex = 0;
    u_int8_t done = FALSE;
    size_t start = 0;
    while (strCopy[cIndex] != 0) {
        if (isWhiteSpace(strCopy[cIndex])) {
            start += 1;
            strlen--;
        } else {
            break;
        }
        cIndex++;
    }
    cIndex = 0;
    while (cIndex < strlen) {
        strCopy[cIndex++] = strCopy[start++];
    }
    strCopy[strlen] = 0;
    cIndex = strlen-1;
    while (strCopy[cIndex] != 0 && cIndex >= 0) {
        if (isWhiteSpace(strCopy[cIndex])) {
            strCopy[cIndex] = 0;
            strlen--;
        } else {
            break;
        }
        cIndex--;
    }
    return strCopy;
}

char* readline() {
    char* line = NULL;
    size_t length;
    int result = getline(&line, &length, stdin);
    if (result < 0) {
        if (result == EOF) {
            free(line);
            return NULL;
        }
        return line;
    } else {
        char* copy = stripString(line);
        free(line);
        return copy;
    }
}

char** getCommand(char* ostring) {
    /**
     *  Splits a string into a list of strings along white space. 
     * 
     */
    size_t current_position = 0;
    size_t length = strlen(ostring);
    size_t num_strings = 0;
    u_int8_t has_seen_word = FALSE;

    while (current_position < length) {
        if (isWhiteSpace(ostring[current_position])) {
            if (has_seen_word) {
                num_strings += 1;
                has_seen_word = FALSE;
            }
        } else {
            has_seen_word = TRUE;
        }
        current_position++;
    }
    if (has_seen_word) {
        num_strings += 1;
    }

    char** command = malloc(sizeof(char*) * (num_strings + 1));
    num_strings = 0;
    current_position = 0;
    size_t word_start = -1;
    size_t word_end = 0;
    while (current_position < length) {
        if (isWhiteSpace(ostring[current_position])) {
            if (word_start != -1) {
                word_end = current_position;
                command[num_strings] = malloc(sizeof(char) * (word_end - word_start + 1));
                memcpy(command[num_strings], ostring + word_start, word_end - word_start);
                command[num_strings][word_end - word_start] = 0;
                num_strings += 1;
                word_start = -1;
            }
        } else {
            if (word_start == -1) {
                word_start = current_position;
            }
        }
        current_position++;
    }
    if (word_start != -1) {
        word_end = current_position;
        command[num_strings] = malloc(sizeof(char) * (word_end - word_start + 1));
        memcpy(command[num_strings], ostring + word_start, word_end - word_start);
        command[num_strings][word_end - word_start] = 0;
        num_strings += 1;
        word_start = -1;
    }
    command[num_strings] = NULL;
    return command;
}

int main() {
    char* currentLine = NULL;
    while (TRUE) {
        printf("> ");
        currentLine = readline();
        if (currentLine != NULL) {
            size_t command_length = strlen(currentLine);
            char** command_string = getCommand(currentLine);
            if (strcmp(command_string[0], "exit") == 0) {
                break;
            } else if (strcmp(command_string[0], "cd") == 0) {
                if (command_length == 1) {
                    changeDirectory(".");
                } else {
                    changeDirectory(command_string[1]);
                }
            } else if (strcmp(command_string[0], "ls") == 0) {
                listFiles();
            } else if (strcmp(command_string[0], "pwd") == 0) {
                printWorkingDirectory();
            } else if (strcmp(command_string[0], "cat") == 0) {
                if (command_length == 1) {
                    fprintf(stderr, "cat: missing file operand\n");
                } else {
                    catFile(command_string[1]);
                }
            }
            free(currentLine);
        } else {
            break;
        }
    }
}