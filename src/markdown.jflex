import java_cup.runtime.Symbol;

%%

%public

%class BasicMarkdown

%standalone
%line
%column


%cup
Digito = [0-9]*
Numero = [0-9]
Letra = ([a-zA-Z]*)([0-9]*)
Palabra = {Letra}({Letra}|{Letra})*
%%


"INICIO" {return new Symbol(sym.INICIO,new String(yytext()));}

"FIN" {return new Symbol(sym.FIN,new String(yytext()));}

"*" {return new Symbol(sym.CURSIVA,new String(yytext()));}

"**" {return new Symbol(sym.NEGRITA,new String(yytext()));}

"***" { return new Symbol(sym.NEGRITA_CURSIVA,new String(yytext())); }

"-" {return new Symbol(sym.ITEM,new String(yytext()));}

">" {return new Symbol(sym.SANGRIA,new String(yytext()));}

"#" {return new Symbol(sym.ENCABEZADO,new String(yytext()));}

"__" { return new Symbol(sym.SALTO_DE_LINEA,new String(yytext())); }

"." { return new Symbol(sym.PUNTO,new String(yytext())); }

{ Palabra } {return new Symbol(sym.PALABRA,new String(yytext()));}

{ Numero } {return new Symbol(sym.Numero,new String(yytext()));}



[\r\n\t\s ]+    	{ /*ignoro blancos*/ } 

. {System.err.println("Caracter Inválido" + yytext());}