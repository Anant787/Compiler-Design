%{
#include<stdio.h>
#include<string.h>
%}
%%
[\t" "]+ fprintf(yyout," ");		
.|\n fprintf(yyout,"%s",yytext);
%%
int yywrap(void){}
int main()
{  
yyin=fopen("input6.txt","r");
yyout=fopen("output6.txt","w");
yylex(); 
return 0;
}
