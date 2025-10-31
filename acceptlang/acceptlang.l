%{

#include <stdio.h>
int valid;

%}


%%

0+1*     {valid = 1;}
0*1+0    {valid = 0;}
.        {valid = 0;}
\n      {
            if(valid == 1){
                printf("valid string!\n\n");
            } else {
                printf("invalid string!\n\n");
            }
            printf("Enter a new string: ");
        }

%%

int main(){
    printf("Enter a string: ");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}

