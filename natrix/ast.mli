
(* Abstract Syntax Tree for Natrix *)

type id = string

type unop =
  | Uneg 

type utypes = 
  | Uint
  | Uid of id

type binop =
  | Badd | Bsub | Bmul | Bdiv
  | Beq | Bneq | Blt | Ble | Bgt | Bge
  | Band | Bor

type cnstt =
  | Cint of int
  | Cmaxint
  | Cminint
  
type expr =
  | Ecst of cnstt
  | Eident of id
  | Ebinop of binop * expr * expr
  | Eunop of unop * expr
  | Einterval of expr * expr

and stmt =
  | Sif of expr * stmt
  | Sife of expr * stmt * stmt
  | Sforeach of id * expr * stmt
  | Svar of id * utypes * expr
  | Sind of id * expr
  | Sprint of expr
  | Stype of id * expr
  
and prog = stmt list
