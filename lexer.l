%{
//header
#include<stdio.h>
%}
%%
[ \t\n\r] ;
[0-9]+     { printf("int %s\n", yytext); }
["].*["]  { printf("string %s\n", yytext); }
"mod" { printf("mod\n"); }
"let"
"in"
"open"
"fun"
[a-zA-Z_][a-zA-Z0-9_]* { printf("symbol %s\n", yytext); }
[{]   { printf("lcurl\n"); }
[}]   { printf("rcurl\n"); }
[(]
[)]
[=]
[->]
[;]
%%
int yywrap() { return 0; }

int main() {
    while(yylex());
}

