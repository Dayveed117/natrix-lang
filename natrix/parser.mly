(* Parser Analyzer for Natrix *)

%{
  open Ast
%}

%token <Ast.cnstt> CST
%token <Ast.binop> CMP
%token <string> ID
%token IF ELSE PRINT FOREACH FLDOT IN DO OR AND FILLED BY OF
%token EOF 
%token LP RP LSB RSB LCB RCB SEMICOLON DOUBLEDOT DOUBLEDOTEQ EQUAL VAR TYPE 
%token PLUS MINUS TIMES DIV

(* Prioridades *)

%left OR
%left AND
%nonassoc CMP
%left PLUS MINUS
%left TIMES DIV

(* Entry Point *)
%start prog

(* Type of Abstract Syntax Tree *)
%type <Ast.file> file

%%

prog:

stmt:




expr:
| c = CST
  { Ecst c }
| var = id
  { Eident id }
| MINUS e1 = expr %prec unary_minus
  { Eunop (Uneg, e1) }
| e1 = expr o = binop e2 = expr
  { Ebinop (o, e1, e2) }
| LP e = expr RP
  { e }

;


%inline binop:
| PLUS  { Badd }
| MINUS { Bsub }
| TIMES { Bmul }
| DIV   { Bdiv }
| c=CMP { c    }
| AND   { Band }
| OR    { Bor  }
;

id:
  id = ID { id }
;
