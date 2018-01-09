%option noyywrap

%{
#include <iostream>
%}

%%

[ \t]   // Ignore whitespace
"+"     { std::cout << "PLUS" << std::endl; }
"-"     { std::cout << "MINUS" << std::endl; }
"*"     { std::cout << "MULTIPLY" << std::endl; }
"/"     { std::cout << "DIVIDE" << std::endl; }
"("     { std::cout << "OPEN_PAREN" << std::endl; }
")"     { std::cout << "CLOSE_PAREN" << std::endl; }
[0-9]+  { std::cout << "INTEGER" << std::endl; }
\n      { std::cout << "NEWLINE" << std::endl; }
.       { std::cout << "UNRECOGNIZED" << std::endl; }

%%
