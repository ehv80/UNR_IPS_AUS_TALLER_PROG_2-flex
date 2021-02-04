%{
#include <stdio.h>
static int cuantos = 0;
%}
%x	COMILLA

%%

[ ]+		cuantos++;
"\""		BEGIN COMILLA;
.		;

<COMILLA>" "	cuantos++;
<COMILLA>"\""		BEGIN 0;
"\\\""		;

%%

int yywrap(){ return 1; }

int main()
{
	yylex();
	printf("cuantos = %d \n" , cuantos );
	return 0;
}
