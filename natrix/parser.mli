
(* The type of tokens. *)

type token = 
  | VAR
  | TYPE
  | TIMES
  | THEN
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
  | FILLED
  | EQUALS
  | EOF
  | ELSE
  | DO
  | DIV
  | DDOT
  | CST of (Ast.cnstt)
  | COLONEQ
  | COLON
  | CMP of (Ast.binop)
  | BY
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.file)
