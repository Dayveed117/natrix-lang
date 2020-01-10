
(* The type of tokens. *)

type token = 
  | VAR
  | TYPE
  | TIMES
  | SEMICOLON
  | RSB
  | RP
  | RCB
  | PRINT
  | PLUS
  | OR
  | OF
  | MINUS
  | LSB
  | LP
  | LCB
  | IN
  | IF
  | ID of (string)
  | FOREACH
  | FLDOT
  | FILLED
  | EQUALS
  | EOF
  | ELSE
  | DOUBLEDOTEQ
  | DOUBLEDOT
  | DO
  | DIV
  | CST of (Ast.cnstt)
  | CMP of (Ast.binop)
  | BY
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.file)
