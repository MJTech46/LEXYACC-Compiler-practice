%{
#include <stdio.h>
int char_count = 0, word_count = 0, line_count = 0;
%}

%%
\n              { line_count++; char_count++; }          // Count newline as a character and line
[ \t]+          { char_count += yyleng; }                // Count spaces/tabs as characters
[^ \t\n]+       { word_count++; char_count += yyleng; }  // Count words and characters
%%

int main()
{
    printf("Enter text (Ctrl+D to stop):\n");
    yylex();   // Start lexical analysis
    printf("\nLines: %d\nWords: %d\nCharacters: %d\n", line_count, word_count, char_count);
    return 0;
}

int yywrap()
{
    return 1;
}
