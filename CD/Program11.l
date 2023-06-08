%{
%}

%s A B C D

%%

<INITIAL>[0-9]+ BEGIN A;
<INITIAL>[0-9]+.+[0-9]+ BEGIN B;
<INITIAL>[A-Za-z_][A-Za-z0-9_]* BEGIN C;
<INITIAL>[^\n]+ BEGIN D;
<INITIAL>\n BEGIN INITIAL; {printf("not Accepted\n");}

<A>[^\n] BEGIN D;
<A>\n BEGIN INITIAL; {printf("This is an Integer \n");}

<B>[^\n] BEGIN D;
<B>\n BEGIN INITIAL; {printf("This is an Float \n");}

<C>[^\n] BEGIN D;
<C>\n BEGIN INITIAL; {printf("This is Identifier \n");}

<D>[^\n] BEGIN D;
<D>\n BEGIN INITIAL; {printf("Invalid \n");}

%%

int yywrap()
{
return 1;
}

int main()
{
printf("Enter the string : ");
yylex();
return 0;
}
