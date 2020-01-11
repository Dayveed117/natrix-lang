(* Parser Analyzer for Natrix *)

%{
  open Ast
%}

%token <Ast.cnstt> CST
%token <Ast.binop> CMP
%token <string> ID
%token IF THEN ELSE PRINT FOREACH IN DO DDOT || && FILLED BY OF
%token EOF 
%token LP RP LSB RSB LCB RCB EQUALS VAR TYPE SEMICOLON COLON COLONEQ
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
%type <Ast.file> prog

%%

prog:
| sl = list(stmt) EOF
 { sl }
;

expr:
| c = CST
  { Ecst c }
| var = id
  { Eident id }
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
  { Sfor (x, e, r) }
;

routine:
| VAR x = id COLON ty = TYPE EQUALS e = expr SEMICOLON
  { Svar (x, e) }
| x = ID COLONEQ e = expr SEMICOLON
  { Sind (x, e, s) }
| PRINT LP e = expr RP SEMICOLON
  { Sprint e }
;

id:
  id = ID { id }
;


%inline binop:
| PLUS  { Badd }
| MINUS { Bsub }
| TIMES { Bmul }
| DIV   { Bdiv }
| c=CMP { c    }
| &&    { Band }
| ||    { Bor  }
;


