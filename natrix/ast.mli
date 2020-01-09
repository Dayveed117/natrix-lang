
(* Abstract Syntax Tree for Natrix *)

type id = string

type unop =
  | Uneg | Unot

type binop =
  | Badd | Bsub | Bmul | Bdiv
  | Beq | Bneq | Blt | Ble | Bgt | Bge (* comparação estrutural *)
  | Band | Bor 

type cnstt =
  | Cbool of bool
  | Cint of int
  | Cmaxint of int
  | Cminint of int
  
type expr =
  | Ecst of cnstt
  | Eident of id
  | Ebinop of binop * expr * expr
  | Eunop of unop * expr

and stmt =
  | Sif of expr * stmt * stmt
  | Svar of id * expr
  | Sprint of expr
  | Sforeach of id * expr * stmt
  | Sind of id * expr * expr

and prog = stmt list
