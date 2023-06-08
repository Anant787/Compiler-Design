%{
#include<stdio.h>
%}
%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|unsigned|main {;}
[a-zA-Z_][a-zA-Z0-9_]* {printf("%s\n",yytext);}
.  {;}
%%
int yywrap()					
{
return 1;
}
int main(void)
{ 
printf("Enter the input:\n");
yylex();						
return 0;
}
