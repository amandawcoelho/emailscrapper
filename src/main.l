/* Segundo trabalho de EA879
 * Amanda Winder Ribeiro Coelho
 * RA 160284
 */

%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
([a-zA-Z0-9]+[a-zA-Z0-9\.-_]*[a-zA-Z0-9]+@[a-zA-Z0-9]+[\-_]) ;

([a-zA-Z0-9]+[a-zA-Z0-9\.\-_]*[a-zA-Z0-9]+@[a-zA-Z0-9]+([\.][a-zA-Z0-9]+)*) {
  printf("%s\n", yytext);
}

.  ;
\n ;
%%

int main()
{
  yylex();
  return 0;
}
