/* 
Language: L = { 0ⁿ1ᵐ | n ≥ 1, m ≥ 0 }

Description:
This program accepts strings that start with one or more '0's 
followed by zero or more '1's.

Examples:
Valid Inputs:   0, 01, 001, 000111
Invalid Inputs: 1, 10, 101, 111, 0010
*/

%{
#include <stdio.h>
%}

%%
0+1*    { printf("Valid string\n"); }
.|\n    { printf("Invalid string\n"); }
%%

int main() {
    yylex();
    return 0;
}
