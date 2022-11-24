import java_cup.runtime.Symbol;

%%

%public

%class BasicMarkdown

%standalone
%line
%column


%cup
ITEM_NUMERICO = ([0-9]+).
SIGNO = ("¿")+ | ("?")+ | ("¡")+ | ("!")+ | (",")+ | (".")+
SIMBOLOS = ({SIGNO}*)({ESPACIO})* ({SIGNO}*)([a-zA-Z]+)([0-9]*) ({ESPACIO})* ({SIGNO}*)({ESPACIO})*
TEXTO = {SIMBOLOS}({SIMBOLOS}|{SIMBOLOS})*
ESPACIO = " "


%%


"*" {return new Symbol(sym.CURSIVA,new String(yytext()));}

"**" {return new Symbol(sym.NEGRITA,new String(yytext()));}

"***" { return new Symbol(sym.NEGRITA_CURSIVA,new String(yytext())); }

"-" {return new Symbol(sym.ITEM,new String(yytext()));}

">" {return new Symbol(sym.SANGRIA,new String(yytext()));}

"#" {return new Symbol(sym.ENCABEZADO,new String(yytext()));}

"__" { return new Symbol(sym.SALTO_DE_LINEA,new String(yytext())); }

"$" { return new Symbol(sym.TITULO,new String(yytext())); }

"%" { return new Symbol(sym.URL,new String(yytext())); }

{ TEXTO } { return new Symbol(sym.TEXTO,new String(yytext()));}

{ ITEM_NUMERICO } {return new Symbol(sym.ITEM_NUMERICO,new String(yytext()));}

{ SIGNO } { return new Symbol(sym.SIGNO,new String(yytext())); } 

{ ESPACIO } { return new Symbol(sym.ESPACIO,new String(yytext()));}

. {System.err.println("Caracter Inválido" + yytext());}