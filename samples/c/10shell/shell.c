#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>

#define TRUE 1
#define FALSE 0

void catFile() {
    
}

void listFiles() {

}

void changeDirectory(char* path) {

}

u_int8_t isWhiteSpace(char character) {
    char whitespaceCharacters[] = {' ', '\t', '\n'};
    int length = sizeof(whitespaceCharacters) / sizeof(whitespaceCharacters[0]);
    for (int i = 0; i < length; i++) {
        if (character == whitespaceCharacters[i]) {
            return TRUE;
        }
    }
    return FALSE;
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

size_t getCommand(char* ostring) {
    int end = -1;
    while (ostring[++end] != 0 && !isWhiteSpace(ostring[end]));
    return end;
}

int main() {
    char* currentLine = NULL;
    while (TRUE) {
        printf("> ");
        currentLine = readline();
        if (currentLine != NULL) {
            printf("'%s'\n", currentLine);
            size_t length = getCommand(currentLine);
            printf("%ld\n", length);
            free(currentLine);
        } else {
            // EOF received, breaking
            break;
        }
    }
}