%{
#include <stdio.h>
%}

%%

-?[0-9]+    { 
                if(yytext[0] == '-') 
                    printf("Negative integer: %s\n", yytext);
                else
                    printf("Positive integer: %s\n", yytext);
            }

[ \t\n]+    ;  // Ignore spaces, tabs, newlines

%%

int main() {
    yylex();   // Start scanning
    return 0;
}
