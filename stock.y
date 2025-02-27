%{
#include <iostream>
#include <cstdlib>
#include <cstring>

using namespace std;

void yyerror(const char *s);
int yylex();
%}

%union {
    char* str;  // Define the union member for TICKER
}

%token <str> TICKER  // Use the union member `str` for TICKER

%%

// Grammar rules for stock ticker symbols
input:
    | input line
    ;

line:
    TICKER {
        cout << "Valid Stock Ticker: " << $1 << endl; // Access the string value of TICKER
        free($1); // Free the allocated string
    }
    | error {
        yyerror("Invalid stock ticker symbol");
        yyerrok; // Discard the current input and continue parsing
    }
    ;

%%

// Error handling function
void yyerror(const char *s) {
    cerr << "Error: " << s << endl;
}

// Main function
int main() {
    cout << "Enter stock ticker symbols (1 to 5 uppercase letters) one per line (Ctrl+D to end input):\n";
    
    yyparse();  // Start parsing the input

    return 0;
}
