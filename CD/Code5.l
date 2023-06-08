%{
#include<stdio.h>
int ch=0,words=0,white=0;
%}
%%
" " {white++; words++;}
[\t\n] {words++;}
[^\n\t] {ch++;}
%%
int yywrap(void){}
int main()
{  
yyin=fopen("input5.txt","r");
yylex(); 
printf("Number of characters: %d\n",ch);
printf("Number of words: %d\n",words);
printf("Number of whitespaces: %d\n",white);
return 0;
}
