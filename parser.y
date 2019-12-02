%{


%}

%union{
    char* int_val;
    char* string_val;
    char* symbol_val;
}

%token LCurl
%token RCurl
%token LParen
%token RParen
%token SemiColon
%token Equal
%token RArrow
%token Mod
%token In
%token Let
%token Open
%token Fun

%token <int_val> Int
%token <string_val> String
%token <symbol_val> Symbol

%%


