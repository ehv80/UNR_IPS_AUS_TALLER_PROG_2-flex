%{
#include <stdio.h>
%}
%%
"petrolio"	printf("petróleo");
.		printf("%s" , yytext );
%%
int yywrap()
{
	return 1;
}
int main()
{
	yylex();
	return 0;	// Salida OK!
}
