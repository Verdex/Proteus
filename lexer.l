%{
//header
#include<stdio.h>
%}
%%
[ \t\n\r] ;
[a|b]     { printf("blarg %s\n", yytext); }
%%
int yywrap() { return 0; }

int main() {
    while(yylex());
}
