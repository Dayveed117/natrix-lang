(* Interpretador Natrix *)

open Ast
open Format

exception Error of string
let error s = raise (Error s)

type value =
  | Vint of int
  | Vminint 
  | Vmaxint
  | Vinterval of int * int 

let range a b =
    let rec aux a b =
      if a > b then [] else a :: aux (succ a) b  in
    if a > b then List.rev (aux b a) else aux a b

let rec print_value = function
  | Vint n -> printf "%d" n
  | Vminint -> printf "%Ld" Int64.min_int
  | Vmaxint -> printf "%Ld" Int64.max_int
  | Vinterval (e1, e2) -> 
      let lista = range e1 e2 in
      List.iter (printf "%d ") lista

let compare_value valor1 valor2 = 
  compare valor1 valor2   

let is_false = function
  | Vint n -> n = 0
  | _ -> true

let is_true v = not (is_false v)

let rec expr ctx = function
  | Ecst (Cint n) ->
      Vint n
  | Ecst (Cminint) ->
      Vminint
  | Ecst (Cmaxint) ->
      Vmaxint
  | Eident id ->
      if not (Hashtbl.mem ctx id) then error "unbound variable";
      Hashtbl.find ctx id
  | Einterval (e1, e2) ->
      Vinterval (e1, e2)

  | Ebinop (Badd | Bsub | Bmul | Bdiv
            Beq | Bneq | Blt | Ble | Bgt | Bge as op, e1, e2) ->
      let v1 = expr ctx e1 in
      let v2 = expr ctx e2 in
      begin 
        match op, v1, v2 with
        | Badd, Vint n1, Vint n2 -> Vint(n1 + n2)
        | Bsub, Vint n1, Vint n2 -> Vint(n1 - n2)
        | Bmul, Vint n1, Vint n2 -> Vint(n1 * n2)
        | Bdiv, Vint  _, Vint 0  -> error "divisao por zero"
        | Bdiv, Vint n1, Vint n2 -> Vint(n1 / n2) 
        | Beq, _, _  -> Vbool (compare_value v1 v2 = 0)
        | Bneq, _, _ -> Vbool (compare_value v1 v2 <> 0)
        | Blt, _, _  -> Vbool (compare_value v1 v2 < 0)
        | Ble, _, _  -> Vbool (compare_value v1 v2 <= 0)
        | Bgt, _, _  -> Vbool (compare_value v1 v2 > 0 )
        | Bge, _, _  -> Vbool (compare_value v1 v2 >= 0 )
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
  | Eunop (Unot, e) ->
      begin
        match expr ctx e with
        | Vint n -> Vint (-n)
        | _ -> error "Unsupported operand types"
      end

and stmt ctx = function
  | Sif (e, s) ->
        if is_true (expr ctx e) then stmt ctx s
  | Sife (e, s1, s2) ->
        if is_true (expr ctx e) then stmt ctx s1
        else stmt ctx s2
  | Sforeach (id, e1, s1) ->
        begin match expr ctx e with
      | Vinterval (min, max) ->
        let lista = range min max in
        Array.iter (fun v -> Hashtbl.replace ctx id v; stmt ctx s) lista
      | _ -> error "list expected" end
  | Sind (id, e) -> 
        Hashtbl.replace ctx id (expr ctx e)
  | Svar (id, t, e) ->
        if (Hashtbl.find ctx id) then error "cannot redefine variable"
        else Hashtbl.add id (t, e)
  | Sprint e ->
        print_value (expr ctx e);
        printf "@."
  | Stype (id, e, e) ->
        if (Hashtbl.find ctx id) then error "cannot redefine type"
        else Hashtbl.add id (e, e)


(* Percorrer a lista de statements *)
let rec read_stmt ctx = function
    | [] -> ()
    | el :: li -> stmt ctx el;
                  read_stmt ctx li
                  

let prog s = read_stmt (Hashtbl.create 17) s