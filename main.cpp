#include <iostream>

extern int yylex(void);

int main(int argc, char* argv[]) {
  yylex();
  return 0;
}
