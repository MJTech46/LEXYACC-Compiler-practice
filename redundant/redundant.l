%{
#include <stdio.h>
%}

%%

[ ]+     { printf(" "); }   
[\t]+    { printf(" "); }   
[\n]+    { printf("\n"); }       
.        { printf("%s", yytext); }  

%%

int main() {
    yyin = fopen("input.txt", "r");  
    yylex();   
    return 0;
}

int yywrap() { return 1; }

