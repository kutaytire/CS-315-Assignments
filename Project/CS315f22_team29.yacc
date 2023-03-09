%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char* s);
extern int yylineno;
%}

%token GO
%token CONST
%token COLON
%token SC
%token COMMA
%token ASSIGNMENT_OP
%token LB
%token RB
%token LP
%token RP
%token NOT
%token AND
%token OR
%token PLUS
%token MINUS
%token MULTIPLY
%token DIVIDE
%token MODULO
%token BOOLEAN
%token INTEGER
%token STRING
%token FLOAT
%token LESSTHAN 
%token GREATERTHAN
%token GREATEROREQUALTHAN 
%token LESSOREQUALTHAN
%token EQUAL
%token NOTEQUAL
%token COMMENT
%token ELSE
%token FOR
%token WHILE
%token IF
%token DEFINECONNECTION
%token HUMIDITY
%token TEMPERATURE
%token SENDINTEGER
%token SOUNDLEVEL
%token SWITCHON
%token SWITCHOFF
%token TIMESTAMP
%token AIRPRESSURE
%token AIRQUALITY
%token FUNCTION
%token INPUT
%token LIGHT
%token PRINT
%token RECIEVEINTEGER
%token RETURN
%token IDENTIFIER
%token NL

%%

program : GO LP RP LB statement_list RB;

statement_list : NL
			| statement NL
			| statement_list NL
			| statement_list statement NL 
			;

statement : assignment 
			| comment 
			| conditional
			| function_declaration 
			| expression 
			| loop 
			| output 
			| return
			;

assignment : CONST IDENTIFIER ASSIGNMENT_OP expression 
			| IDENTIFIER ASSIGNMENT_OP expression
			;

expression : logic_expression 
			| STRING
			;

logic_expression : logic_expression OR and_expression 
			| and_expression
			;

and_expression : and_expression AND not_expression 
			| not_expression
			;

not_expression : NOT not_expression 
			| BOOLEAN 
			| comparison_expression
			;
 
comparison_expression : math_expression NOTEQUAL comparison_expression 
			| math_expression LESSTHAN comparison_expression
			| math_expression GREATERTHAN comparison_expression
			| math_expression GREATEROREQUALTHAN comparison_expression
			| math_expression EQUAL comparison_expression
			| math_expression LESSOREQUALTHAN comparison_expression
			| math_expression
			;

math_expression : math_expression PLUS multiply_divide_modulo 
			| math_expression MINUS multiply_divide_modulo 
			| multiply_divide_modulo
			;

multiply_divide_modulo : multiply_divide_modulo MULTIPLY value 
			| multiply_divide_modulo DIVIDE value 
			| multiply_divide_modulo MODULO value 
			| value
			;

value : INTEGER 
			| FLOAT 
			| LP expression RP
			| IDENTIFIER
			| function_call
			;

function_call : IDENTIFIER LP identifiers RP 
			| IDENTIFIER LP RP 
			| iot_functions 
			| input
			;

input : INPUT LP RP;

iot_functions : iot_read_value 
			| switch_on 
			| switch_off 
			| define_connection 
			| send_integer 
			| recieve_integer
			;

iot_read_value : temperature 
			| humidity 
			| air_pressure 
			| air_quality 
			| light 
			| sound_level 
			| time_stamp
			;

switch_off : SWITCHOFF LP INTEGER RP {if($3 > 9 || $3 < 0) {yyerror("Index out of bounds"); return 1;}}

switch_on : SWITCHON LP INTEGER RP {if($3 > 9 || $3 < 0) {yyerror("Index out of bounds"); return 1;}}

define_connection : DEFINECONNECTION LP STRING RP 
			| DEFINECONNECTION LP IDENTIFIER RP
			;

send_integer : SENDINTEGER LP define_connection COMMA INTEGER RP;

recieve_integer : RECIEVEINTEGER LP define_connection RP;

temperature : TEMPERATURE LP RP;

humidity : HUMIDITY LP RP;

air_pressure : AIRPRESSURE LP RP;

air_quality : AIRQUALITY LP RP;

light : LIGHT LP RP;

sound_level : SOUNDLEVEL LP RP;

time_stamp : TIMESTAMP LP RP;

comment: COMMENT;

conditional : matched 
			| unmatched
			;

matched: IF LP logic_expression RP LB statement_list RB ELSE LB statement_list RB
		| IF LP logic_expression RP LB matched RB ELSE LB statement_list RB 
		| IF LP logic_expression RP LB statement_list RB ELSE LB matched RB 
		| IF LP logic_expression RP LB matched RB ELSE LB matched RB;
		
unmatched: IF LP logic_expression RP LB statement_list RB
		| IF LP logic_expression RP LB statement_list RB ELSE LB unmatched RB
		| IF LP logic_expression RP LB matched RB ELSE LB unmatched RB;

function_declaration : FUNCTION IDENTIFIER LP identifiers RP LB statement_list return RB 
			| FUNCTION IDENTIFIER LP RP LB statement_list return RB
			;

identifiers : IDENTIFIER 
			| IDENTIFIER COMMA identifiers
			;

return : RETURN expression NL | RETURN NL;


loop : for_loop 
			| while_loop
			;

for_loop : FOR LP IDENTIFIER COLON range RP LB statement_list RB;

while_loop : WHILE LP logic_expression RP LB statement_list RB;

range : LP INTEGER COMMA INTEGER COMMA INTEGER RP 
			| LP INTEGER COMMA INTEGER RP 
			| LP INTEGER RP
			;

output : PRINT LP output_body RP;

output_body : expression 
			| expression COMMA output_body
			;

%%
#include "lex.yy.c"
void yyerror(char *s) {
	fprintf(stdout, "line %d: %s\n", yylineno,s);
}

int main() {
	int error = yyparse();
	if (error == 0) {
		printf("Input program is valid.\n");
	}
 	return error;
}
