%{
#include "calc.tab.h"
%}

%%

[ \t\n]+	;

"("		return '(';
")"		return ')';
"*"		return '*';
"+"		return '+';
";"		return ';';
"sin"		return SEN;
[0-9]+		return NRO;
[0-9]+"."[0-9]+	return NRO;
.		abort();

%%

int yywrap()
{
	return 1;
}
