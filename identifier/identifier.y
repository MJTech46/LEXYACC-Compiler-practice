%{

#include <stdio.h>
#include <stdlib.h>

%}


%token IDENTIFIER OTHER


%%
input:
    IDENTIFIER      { printf("Valid identifier\n"); }
  | OTHER           { printf("Invalid identifier\n"); }
  ;
%%


int main() {
    printf("Enter an identifier: ");
    yyparse();
    return 0;
}

int yyerror() {
    printf("Invalid identifier\n");
    return 0;
}
