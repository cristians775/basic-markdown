import java_cup.runtime.Symbol;

%%

%public

%class TP

%standalone
%line
%column


%cup
Digito = [0-9]

Letra = [a-zA-Z]
Palabra = {Letra}({Letra}|{Letra})*
%%



"PROGRAMA" {return new Symbol(sym.INICIO);}

"VAR" {return new Symbol(sym.VARIABLE);}

"SI" {return new Symbol(sym.SI);}

"SINO" {return new Symbol(sym.SINO);}

"ENTONCES" {return new Symbol(sym.ENTONCES);}

"ITERAR" {return new Symbol(sym.ITERAR);}

"FIN" {return new Symbol(sym.FIN);}

"=" {return new Symbol(sym.ASIGNAR);}

"==" {return new Symbol(sym.IGUAL);}

"!=" {return new Symbol(sym.DISTINTO);}

"<=" {return new Symbol(sym.MENOR_IGUAL);}

">=" {return new Symbol(sym.MAYOR_IGUAL);}

">" {return new Symbol(sym.MAYOR);}

"<" {return new Symbol(sym.MENOR);}

"iterar" {return new Symbol(sym.ITERAR);}

"(" {return new Symbol(sym.PAR_ABRE);}

")" {return new Symbol(sym.PAR_CIERRA);}
[:digit:]+ { return new Symbol(sym.NUMERO, new Integer(yytext())); }


{ Palabra } {return new Symbol(sym.PALABRA,new String(yytext()));}
[\r\n\t\s ]+    	{ /*ignoro blancos*/ } 
. {System.err.println("Caracter Inválido" + yytext());}