package tp2compile;
import java_cup.runtime.Symbol;

%%
%class ExpressionNormal
%line
%column
%cup
%{eofval
	return new Symbol (sym.EOF);
%eofval}
comment = "/*" ([^*] | ("*"[^/]))* "*/"
commentSimple = "//"  [^\r\n]*
%%
[0-9]+ {return new Symbol (sym.ENTIER, yyline, yycolumn, new Integer(yytext()));}
"let" {return new Symbol (sym.BEGINAFF, yyline, yycolumn);}
"=" {return new Symbol (sym.SELECTAFF, yyline, yycolumn);}
"+" {return new Symbol (sym.PLUS, yyline, yycolumn);}
"-" {return new Symbol (sym.MINUS, yyline, yycolumn);}
"*" {return new Symbol (sym.TIMES, yyline, yycolumn);}
"/" {return new Symbol (sym.DIVIDE, yyline, yycolumn);}
"mod" {return new Symbol (sym.MOD, yyline, yycolumn);}
";" {return new Symbol (sym.SEMI, yyline, yycolumn);}
"(" {return new Symbol (sym.PAR_G, yyline, yycolumn);}
")" {return new Symbol (sym.PAR_D, yyline, yycolumn);}
[a-z][a-zA-Z]* {return new Symbol (sym.ID, yyline, yycolumn, new String(yytext()));}
\n  { ; /* on fait rien */}
\r { ; /* on fait rien */ }
" " { ; /* on fait rien */ }
{comment} {}
{commentSimple} {}
.   { if (yytext().equals("#"))System.err.println("Mispelled character < "+yytext()+" >");}

