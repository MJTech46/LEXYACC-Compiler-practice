%{

#include <stdio.h>

%}

%%

[0-9]*  {printf("positive number!\n");}
-[0-9]* {printf("negative number!\n");}


%%

int main(){
    printf("Enter a number: ");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}