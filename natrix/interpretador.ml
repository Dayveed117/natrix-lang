open Ast
open Format

exception Error of string
let error s = raise (Error s)

type value =
  | Vint of int

let rec print_value = function
  | Vint n -> printf "%d" n
 


let compare_value valor1 valor2 = 
  compare valor1 valor2   

let rec expr ctx = function
  | Ecst (Cint n) ->
      Vint n
  | Ebinop (Badd | Bsub | Bmul | Bdiv | Bmod |
            Beq | Bneq | Blt | Ble | Bgt | Bge as op, e1, e2) ->
      let v1 = expr ctx e1 in
      let v2 = expr ctx e2 in
      begin match op, v1, v2 with
        | Badd, Vint n1, Vint n2 -> Vint(n1 + n2)
        | Bsub, Vint n1, Vint n2 -> Vint(n1 - n2)
        | Bmul, Vint n1, Vint n2 -> Vint(n1 * n2)
        | Bdiv, Vint  _, Vint 0  -> error "divisao por zero"
        | Bdiv, Vint n1, Vint n2 -> Vint(n1 / n2) 
        | Bmod, _ , Vint 0  -> error "divisao por zero"
        | Beq, _, _  -> Vbool (compare_value v1 v2 = 0)
        | Bneq, _, _ -> Vbool (compare_value v1 v2 <> 0) (* <> *) 
        | Blt, _, _  -> Vbool (compare_value v1 v2 < 0)  (* < *) 
        | Ble, _, _  -> Vbool (compare_value v1 v2 <= 0) (* <=*)
        | Bgt, _, _  -> Vbool (compare_value v1 v2 > 0 ) (* > *) 
        | Bge, _, _  -> Vbool (compare_value v1 v2 >= 0 )  (* >= *)
      end

  | Ebinop (Band, e1, e2) ->
        let v1 = expr ctx e1 in
        if is_true v1 then
            expr ctx e2
        else
            v1 
  | Ebinop (Bor, e1, e2) ->
        let v1 = expr ctx e1 in
        if is_true v1 then
            v1
        else
            expr ctx e2 
  | Eunop (Unot, e1) ->
        Vbool (is_false (expr ctx e1))

  (* chamadas de função *)
  | Eident id ->
      assert false (* por completar (questão 3) *)
  | Ecall ("len", [e1]) ->
      assert false (* por completar (questão 5) *)
  | Ecall ("range", [e1]) ->
      assert false (* por completar (questão 5) *)
  | Ecall (f, el) ->
      assert false (* por completar (questão 4) *)
  | Elist el ->
      assert false (* por completar (questão 5) *)
  | Eget (e1, e2) ->
      assert false (* por completar (questão 5) *)
