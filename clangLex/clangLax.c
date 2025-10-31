/*
    Simple Lexical Analyzer in C
    ---------------------------------
    This program reads a C source file (e.g., input.c)
    and identifies tokens such as:
      - Keywords
      - Identifiers
      - Constants
      - Operators
      - Symbols
*/

#include <stdio.h>
#include <ctype.h>
#include <string.h>

#define MAX 50

// List of C keywords
const char *keywords[] = {
    "int", "float", "char", "double", "if", "else", "for", "while", "do", "return",
    "void", "main", "printf", "scanf", "include", "long", "short", "switch", "case"
};
int keyword_count = sizeof(keywords) / sizeof(keywords[0]);

// Function to check if a word is a keyword
int isKeyword(const char *word) {
    for (int i = 0; i < keyword_count; i++) {
        if (strcmp(word, keywords[i]) == 0)
            return 1;
    }
    return 0;
}

// Function to check if a character is an operator
int isOperator(char ch) {
    char operators[] = "+-*/%=<>&|^!";
    for (int i = 0; i < strlen(operators); i++) {
        if (ch == operators[i])
            return 1;
    }
    return 0;
}

// Function to check if a character is a symbol
int isSymbol(char ch) {
    char symbols[] = "(){},;:\"'[]#";
    for (int i = 0; i < strlen(symbols); i++) {
        if (ch == symbols[i])
            return 1;
    }
    return 0;
}

// Main function
int main() {
    FILE *fp;
    char filename[50], ch, buffer[MAX];
    int i = 0, line = 1;

    printf("Enter source file name: ");
    scanf("%s", filename);

    fp = fopen(filename, "r");
    if (fp == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    printf("\n--- Lexical Analysis ---\n");

    while ((ch = fgetc(fp)) != EOF) {
        // Handle new lines
        if (ch == '\n') {
            line++;
            continue;
        }

        // If letter or digit, collect it
        if (isalnum(ch) || ch == '_') {
            buffer[i++] = ch;
        } 
        else if (isspace(ch) || isOperator(ch) || isSymbol(ch)) {
            if (i > 0) {
                buffer[i] = '\0';
                i = 0;

                if (isKeyword(buffer))
                    printf("Line %-3d : %-10s --> Keyword\n", line, buffer);
                else if (isdigit(buffer[0]))
                    printf("Line %-3d : %-10s --> Constant\n", line, buffer);
                else
                    printf("Line %-3d : %-10s --> Identifier\n", line, buffer);
            }

            // Handle operator or symbol separately
            if (isOperator(ch))
                printf("Line %-3d : %-10c --> Operator\n", line, ch);
            else if (isSymbol(ch))
                printf("Line %-3d : %-10c --> Symbol\n", line, ch);
        }
    }

    fclose(fp);
    return 0;
}
