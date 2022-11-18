%%
%class Ejer5
%standalone
%line
%column


A = ((.)*)+ | +((.))*
%% 
{A} { System.out.print("*"+yytext()+"*");  }
(\n) {}