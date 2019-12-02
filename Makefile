
all: lex.yy.c
	clang lex.yy.c -o proteus

lex.yy.c: 
	flex lexer.l

clean:
	rm -rf proteus 
	rm -rf *.yy.c 

