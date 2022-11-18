%%
%class Ejer3
%standalone
%line
%column


ESPACIOS = [" " | \t]+
%% 
{ESPACIOS} { System.out.print(" ");  }
(\n) {}