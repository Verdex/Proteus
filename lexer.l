%{
//header
#include<stdio.h>
%}
%%
[a|b]     { printf("%s\n", yytext); }
%%
int yywrap() { return 0; }

int main() {
    while(yylex());
}
