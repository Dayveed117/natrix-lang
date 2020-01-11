(* Parser Analyzer for Natrix *)

%{
  open Ast
%}

%token <Ast.cnstt> CST
%token <Ast.binop> CMP
%token <Ast.ty> TYPE
%token <string> ID
%token IF THEN ELSE PRINT FOREACH IN DO DDOT OR AND FILLED BY OF
%token EOF 
%token LP RP LSB RSB LCB RCB EQUALS VAR COLON SEMICOLON COLONEQ
%token PLUS MINUS TIMES DIV

(* Prioridades *)

%left OR
%left AND
%nonassoc CMP
%nonassoc unary_minus
%left PLUS MINUS
%left TIMES DIV

(* Entry Point *)
%start prog

(* Type of Abstract Syntax Tree *)
%type <Ast.prog> prog

%%

prog:
| sl = list(stmt) EOF
 { sl }
;

expr:
| c = CST
  { Ecst c }
| var = id
  { Eident var }
| MINUS e1 = expr %prec unary_minus
  { Eunop (Uneg, e1) }
| e1 = expr o = binop e2 = expr
  { Ebinop (o, e1, e2) }
;

stmt:
| r = routine
  { r }
| IF c = expr THEN LCB r = routine RCB
  { Sif (c, r) }
| IF c = expr THEN LCB r1 = routine RCB ELSE LCB r2 = routine RCB
  { Sife (c, r1, r2) }
| FOREACH x = id IN e = expr DO LCB r = routine RCB
  { Sforeach (x, e, r) }
;

routine:
| VAR x = id COLON ty = TYPE EQUALS e = expr SEMICOLON
  { Svar (x, ty, e) }
| x = id COLONEQ e = expr SEMICOLON
  { Sind (x, e) }
| PRINT LP e = expr RP SEMICOLON
  { Sprint e }
;

id:
  ident = ID { ident }
;

%inline binop:
| PLUS  { Badd }
| MINUS { Bsub }
| TIMES { Bmul }
| DIV   { Bdiv }
| c=CMP { c    }
| AND    { Band }
| OR    { Bor  }
;


