%%
%class Ejer
%standalone
%line
%column


BINARIO_PAR = ([0-1]*)0
BINARIO_NO_PAR = ([0-1]*)1
%% 
{BINARIO_PAR} { System.out.print("BINARIO_PAR ");  }
{BINARIO_NO_PAR} { System.out.print(yytext()+" ");}
(" "|\t|\r)+ {}
(\n) {System.out.println(" ");}