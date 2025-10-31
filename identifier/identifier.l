%{ 
    #include "y.tab.h"
%}

%%

[a-zA-Z][a-zA-Z0-9]*        {return IDENTIFIER;}
.                           {return OTHER;}

%%

int yywrap() {
    return 1;
}

