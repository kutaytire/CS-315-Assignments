%option yylineno

colon                  \:
semicolon              \;
comma                  \,
assignment_operator    \:\=
newline 	       \n
left_bracket           \{
right_bracket          \}
left_paranthesis       \(
right_paranthesis      \)
and                    \&\&
or                     \|\|
plus                   \+
minus                  \-
divide                 \/
multiply               \*
modulo                 \%
not                    \!
BOOLEAN                TRUE|FALSE
less_than              \<
greater_than           \>
greater_equal_than     \>\=
less_equal_than        \<\=
equal                  \=\=
not_equal              \!\=
comment                \#.*\#  
go                     go 
const_key_word         constant
else                   else
function               function
for                    for
while                  while
if                     if
function_key_word      function
humidity               humidity
temperature            temperature
define_connection      defineConnectionToURL
input                  input
light                  light
print                  print 
recieve_integer        recieveIntegerValue
return                 return
send_integer           sendIntegerValue
sound_level            soundLevel
switch_on              switchOn
switch_off             switchOff
time_stamp             timeStamp
air_pressure           airPressure
air_quality            airQuality 
low_alphabetic         [a-z]
upper_alphabetic       [A-Z]
numeric                [0-9]
alphabetic             {low_alphabetic} | {upper_alphabetic}
alphanumeric           {alphabetic} | {numeric}
STRING                 \"([^"])*\"
INTEGER                [+-]?{numeric}+
FLOAT                  [+-]?{numeric}*(\.)?{numeric}+
identifier             [a-z][a-zA-Z0-9]*


%%
{go} 		           {return(GO);}
{const_key_word}       {return(CONST );}
{colon}                {return(COLON );}
{semicolon}            {return(SC );}
{comma}                {return(COMMA );}
{assignment_operator}  {return(ASSIGNMENT_OP );}
{left_bracket}         {return(LB );}
{right_bracket}        {return(RB );} 
{left_paranthesis}     {return(LP );}
{right_paranthesis}    {return(RP );}
{not}                  {return(NOT );}
{and}                  {return(AND );}
{or}                   {return(OR );}
{plus}                 {return(PLUS );}
{minus}                {return(MINUS );}
{multiply}             {return(MULTIPLY );}
{divide}               {return(DIVIDE );}
{modulo}               {return(MODULO );}
{BOOLEAN}              {return(BOOLEAN );}
{INTEGER}              {yylval = atoi(yytext);return(INTEGER );}
{STRING}               {return(STRING );}
{FLOAT}                {return(FLOAT );}
{less_than}            {return(LESSTHAN  );}
{greater_than}         {return(GREATERTHAN );}
{greater_equal_than}   {return(GREATEROREQUALTHAN  );}
{less_equal_than}      {return(LESSOREQUALTHAN );}
{equal}                {return(EQUAL );}
{not_equal}            {return(NOTEQUAL );}
{newline}	       	   {return(NL);}
{comment}              {return(COMMENT );}  
{else}                 {return(ELSE );}
{for}                  {return(FOR );}
{while}                {return(WHILE );} 
{if}                   {return(IF );}
{define_connection}    {return(DEFINECONNECTION );}
{humidity}             {return(HUMIDITY );}
{temperature}          {return(TEMPERATURE );}
{send_integer}         {return(SENDINTEGER );} 
{sound_level}          {return(SOUNDLEVEL );} 
{switch_on}            {return(SWITCHON );}
{switch_off}           {return(SWITCHOFF );}
{time_stamp}           {return(TIMESTAMP );}
{air_pressure}         {return(AIRPRESSURE );}
{air_quality}          {return(AIRQUALITY );} 
{function}             {return(FUNCTION );}
{input}                {return(INPUT );} 
{light}                {return(LIGHT );} 
{print}                {return(PRINT );}
{recieve_integer}      {return(RECIEVEINTEGER );}
{return}               {return(RETURN );} 
{identifier}           {return(IDENTIFIER );}

%%
int yywrap(){
return 1;
}
