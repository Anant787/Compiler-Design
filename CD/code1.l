%{
#include<stdio.h>
#include<string.h>
int count=0,space=0,tcount=0,rcount=0;
%}
%%
\n count++;
" " space++;
\t tcount++;
[^\t" "\n] rcount++;
end return 0;
%%
int yywrap(){return 1;}
int main()
{  
printf("Enter the input:\n");
yylex();
printf("Number of lines: %d\n",count);
printf("Number of spaces: %d\n",space);
printf("Number of meta spaces: %d\n",tcount);
printf("Number of characters: %d\n",rcount);
return 0;
}
