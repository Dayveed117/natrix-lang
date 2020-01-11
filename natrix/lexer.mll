
(* Analisador léxico*)

{
  open Lexing
  open Ast
  open Parser

  exception Lexing_error of string

  let id_or_kwd =
    let h = Hashtbl.create 32 in
    List.iter (fun (s, tok) -> Hashtbl.add h s tok)
      ["var", VAR;
       "type", TYPE;
       "int", INT;
       "if", IF;
       "else", ELSE;
       "print", PRINT;
       "foreach", FOREACH;
       "in", IN;
       "do", DO;
       "filled", FILLED;
       "by", BY;
       "of", OF;
       "true", CST (Cbool true);
       "false", CST (Cbool false);];
   fun s -> try Hashtbl.find h s with Not_found -> ID s

   let string_buffer = Buffer.create 1024

}

let letter = ['a'-'z' 'A'-'Z']
let digit = ['0'-'9']
let ident = letter (letter | digit | '_')*
let integer = ['0'-'9']+
let space = [' ' '\t']
let comment = "//" [^'\n']*



rule next_tokens = parse
  | '\n'    { new_line lexbuf; next_tokens lexbuf }
  | (space | comment)+
            { next_tokens lexbuf }
  | ident as id { [id_or_kwd id] }
  | '+'     { [PLUS] }
  | '-'     { [MINUS] }
  | '*'     { [TIMES] }
  | "/"     { [DIV] }
  | '='     { [EQUALS] }
  | ":="    { [COLONEQ] }
  | ".."    { [DDOT] }
  | ';'     { [SEMICOLON] }
  | "!="    { [CMP Bneq] }
  | "&&"    { [CMP Band] }
  | "||"    { [CMP Bor] }
  | "<"     { [CMP Blt] }
  | "<="    { [CMP Ble] }
  | ">"     { [CMP Bgt] }
  | ">="    { [CMP Bge] }
  | '('     { [LP] }
  | ')'     { [RP] }
  | '['     { [LSB] }
  | ']'     { [RSB] }
  | '{'     { [LCB] }
  | '}'     { [RCB] }
  | integer as s
            { try [CST (Cint (int_of_string s))]
              with _ -> raise (Lexing_error ("constant too large: " ^ s)) }
  | eof     { [EOF] }
  | _ as c  { raise (Lexing_error ("illegal character: " ^ String.make 1 c)) }

{
  let next_token =
    let tokens = Queue.create () in (* próximos tokens por retornar *)
    fun lb ->
      if Queue.is_empty tokens then begin
        let l = next_tokens lb in
        List.iter (fun t -> Queue.add t tokens) l
      end;
      Queue.pop tokens
}