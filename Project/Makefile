all: parser clean

parser: CS315f22_team29.lex CS315f22_team29.yacc
	lex CS315f22_team29.lex
	yacc CS315f22_team29.yacc
	gcc -o parser y.tab.c

clean:
	-rm -f *.o lex.yy.c *.tab.* *.output
