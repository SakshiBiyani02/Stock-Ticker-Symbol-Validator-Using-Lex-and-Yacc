# Stock Ticker Symbol Validator using Lex and Yacc
This program validates stock ticker symbols entered by the user. A valid ticker symbol consists of 1 to 5 uppercase English letters (e.g., AAPL, MSFT). The program uses Lex (Flex) for lexical analysis and Yacc (Bison) for syntax parsing. It identifies valid tickers and handles errors for invalid symbols, such as those containing numbers, special characters, or lowercase letters.
## Procedure
1.	Setup:
-	Write a Bison file (stock.y) to define the grammar and token handling for ticker validation.
-	Write a Flex file (stock.l) to tokenize user input and identify stock ticker symbols.
2.	Lexical Analysis (Flex):
-	Define rules to match valid ticker symbols ([A-Z]{1,5}).
-	Assign matched symbols to yylval for parsing.
3.	Syntax Parsing (Bison):
-	Use grammar rules to process valid tickers and print them as "Valid Stock Ticker".
-	Handle invalid symbols by displaying error messages.
4.	Compilation:
-	Generate parser and scanner files using bison -d stock.y and flex stock.l.
-	Compile the generated files with g++ lex.yy.c stock.tab.c -o stock.
5.	Execution:	Run the program, input stock ticker symbols line by line, and view validation results.
## Editor Used: 
Visual Studio Code 
## Compiler Used:
-	GCC (GNU Compiler Collection) for compiling C and C++ code.
-	Bison and Flex for generating the parser and lexer, respectively.
## Executable Commands
1.	Generate C File from Bison Program: bison -d stock.y .
This generates two files :
- stock.tab.c
- stock.tab.h
3.	Generate C File from Lex Program: flex stock.l
4.	Compile the C File: g++ lex.yy.c stock.tab.c -o stock
5.	Run the Program with Input File: ./stock
## Output
![Output](?raw=true)
## Test cases explanation
-	AAPL is valid because it adheres to the rule [A-Z]{1,5}: only uppercase letters and within the length limit.
-	@pl is invalid because it contains an invalid character (@) and does not fit the [A-Z]{1,5} pattern.
