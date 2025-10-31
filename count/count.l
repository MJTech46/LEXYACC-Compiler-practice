%{
    
#include<stdio.h>    

int cc, wc, lc = 0;

%}

%%

\n          {lc++; cc++;}
[ \t]+      {cc+=yyleng;}
[^ \t\n]+   {wc++; cc+=yyleng;}

%%

int main(){
    yyin = fopen("input.txt", "r");
    yylex();
    printf("Total char: %d\nTotal words: %d\nTotal lines: %d\n", cc, wc, lc);
    return 0;
}

int yywrap(){return 1;}
