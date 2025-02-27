%{
#include "stock.tab.h"
#include <iostream>
#include <cstdlib>
#include <cstring>

using namespace std;

void yyerror(const char *s);
%}

%option noyywrap

%%

[A-Z]{1,5}        { 
                    yylval.str = strdup(yytext);  // Assign the matched string to yylval.str
                    return TICKER; 
                  }
\n                { /* Ignore new lines */ }
[ \t]+            { /* Ignore whitespace */ }
.                 { yyerror("Invalid character in stock ticker symbol"); }

%%
