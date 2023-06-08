%{
#include<stdio.h>
#include<string.h>
%}
%%
[0-9]+"."+[0-9]+ {printf("%s :float\n",yytext);}
[0-9]+ {printf("%s :integer\n",yytext);}
. {;}
%%
int yywrap(){
return 1;}
int main()
{ 
printf("Enter the input:\n");
yylex();
return 0;
}
