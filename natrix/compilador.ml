(* Compilador Natrix *)

open Ast
open Format
open X86_64

(* Excepção por levantar quando uma variávelm(local ou global) é mal utilizada *)
exception VarUndef of string

(* Tamanho da frame, em byte (cada variável local ocupa 8 bytes) *)
let frame_size = ref 0

(* As variáveis globais são arquivadas numa tabela de dispersão *)
let (genv : (string, unit) Hashtbl.t) = Hashtbl.create 17

(* Utilizamos uma tabela associativa cujas chaves são as variáveis locais
   (cadeias de caracteres) e onde o valor associado é a posição
   relativamente  a %rbp (em bytes) *)
module StrMap = Map.Make(String)

let compile_expr =
  (* Função recursiva local a compile_expr utilizada para gerar o código
     máquina da árvore de sintaxe abstracta associada a um valor de tipo
     Ast.expr ; no fim da execução deste código, o valor deve estar
     no topo da pilha *)
  let rec comprec env next = function
    | Ecst (Cint c) -> 
      movq (imm i) !%rax ++
      pushq %rax
    | Ecst (Cmaxint) ->

    | Ecst (Cminint) ->
        
    | Eident id -> 
      begin
        try
          let offset = - (StrMap.find x env) in
          movq (ind ~ofs rbp) !%rax ++
          pushq !%rax
        with Not_found ->
          if not (Hashtbl.mem genv x) then raise (VarUndef x);
          movq (lab x) !%rax ++
          pushq !%rax

    | Ebinop (Bdiv, e1, e2) ->
        comprec env next e1 ++
        comprec env next e2 ++
        movq (imm 0) !%rdx ++
        popq rbx ++
        popq rax ++
        idivq !%rbx ++
        pushq !%rax

    | Ebinop (o,e1,e2) ->
      let op = match o with
        | Badd -> addq
        | Bsub -> subq
        | Bmul -> imulq
        | Bdiv -> assert false
      in
    | Eunop (si, e) ->



let compile_stmt = function
  | Sif (c, s) ->
  | Sife (c, s1, s2) ->
  | Sforeach (id, e, s) ->
  | Svar (id, ty, e) ->
  | Sind (id, e) ->
  | Sprint e ->

let compile_program p ofile =