
module MenhirBasics = struct
  
  exception Error
  
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
    | ID of (
# 9 "parser.mly"
       (string)
# 28 "parser.ml"
  )
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
    | CST of (
# 7 "parser.mly"
       (Ast.cnstt)
# 43 "parser.ml"
  )
    | CMP of (
# 8 "parser.mly"
       (Ast.binop)
# 48 "parser.ml"
  )
    | BY
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState53
  | MenhirState50
  | MenhirState47
  | MenhirState45
  | MenhirState42
  | MenhirState36
  | MenhirState34
  | MenhirState32
  | MenhirState28
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState11
  | MenhirState7
  | MenhirState6
  | MenhirState1
  | MenhirState0

# 3 "parser.mly"
  
  open Ast

# 93 "parser.ml"

let rec _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FOREACH ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | PRINT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | VAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | EOF ->
        _menhir_reduce12 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv224)

and _menhir_goto_routine : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_routine -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv201 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RCB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv197 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv191 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LCB ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv187 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
                    | PRINT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                    | VAR ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv188)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv189 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)) : 'freshtv192)
            | EOF | FOREACH | ID _ | IF | PRINT | VAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv193 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (c : 'tv_expr)), _, (r : 'tv_routine)) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_stmt = 
# 52 "parser.mly"
  ( Sif (c, r) )
# 175 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv195 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv199 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv209 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine)))) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RCB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv205 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine)))) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv203 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine)))) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (c : 'tv_expr)), _, (r1 : 'tv_routine)), _, (r2 : 'tv_routine)) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_stmt = 
# 54 "parser.mly"
  ( Sife (c, r1, r2) )
# 214 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv207 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine)))) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv217 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RCB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv213 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv211 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (x : 'tv_id)), _, (e : 'tv_expr)), _, (r : 'tv_routine)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_stmt = 
# 56 "parser.mly"
  ( Sfor (x, e, r) )
# 245 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)) : 'freshtv214)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv215 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)
    | MenhirState0 | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_routine) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (r : 'tv_routine)) = _menhir_stack in
        let _v : 'tv_stmt = 
# 50 "parser.mly"
  ( r )
# 264 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)) : 'freshtv222)
    | _ ->
        _menhir_fail ()

and _menhir_run21 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | MINUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run23 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> (
# 8 "parser.mly"
       (Ast.binop)
# 289 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | MINUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | MINUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run11 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | MINUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | MINUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | MINUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run15 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | MINUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | AND | CMP _ | DO | LCB | OR | RP | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv99 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 43 "parser.mly"
  ( Eunop (Uneg, e1) )
# 418 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv101 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_expr = let o =
          let _1 = _10 in
          
# 77 "parser.mly"
        ( Bmul )
# 440 "parser.ml"
          
        in
        
# 45 "parser.mly"
  ( Ebinop (o, e1, e2) )
# 446 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)) : 'freshtv108)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | AND | CMP _ | DO | LCB | MINUS | OR | PLUS | RP | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv109 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let o =
              let _1 = _10 in
              
# 75 "parser.mly"
        ( Badd )
# 469 "parser.ml"
              
            in
            
# 45 "parser.mly"
  ( Ebinop (o, e1, e2) )
# 475 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv111 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_expr = let o =
          let _1 = _10 in
          
# 78 "parser.mly"
        ( Bdiv )
# 497 "parser.ml"
          
        in
        
# 45 "parser.mly"
  ( Ebinop (o, e1, e2) )
# 503 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | AND | CMP _ | DO | LCB | MINUS | OR | PLUS | RP | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv119 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let o =
              let _1 = _10 in
              
# 76 "parser.mly"
        ( Bsub )
# 526 "parser.ml"
              
            in
            
# 45 "parser.mly"
  ( Ebinop (o, e1, e2) )
# 532 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv121 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)) : 'freshtv124)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv131 * _menhir_state) * _menhir_state * 'tv_id)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | CMP _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv127 * _menhir_state) * _menhir_state * 'tv_id)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv125 * _menhir_state) * _menhir_state * 'tv_id)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (x : 'tv_id)), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let ty = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_routine = 
# 61 "parser.mly"
  ( Svar (x, e) )
# 575 "parser.ml"
             in
            _menhir_goto_routine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)) : 'freshtv128)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv129 * _menhir_state) * _menhir_state * 'tv_id)))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)) : 'freshtv132)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | CMP _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | DO | LCB | OR | RP | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv133 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let o =
              let _1 = _10 in
              
# 81 "parser.mly"
        ( Bor  )
# 615 "parser.ml"
              
            in
            
# 45 "parser.mly"
  ( Ebinop (o, e1, e2) )
# 621 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv135 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)) : 'freshtv138)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state * 'tv_expr) * (
# 8 "parser.mly"
       (Ast.binop)
# 636 "parser.ml"
        )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | LCB | OR | RP | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv139 * _menhir_state * 'tv_expr) * (
# 8 "parser.mly"
       (Ast.binop)
# 654 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), (c0 : (
# 8 "parser.mly"
       (Ast.binop)
# 659 "parser.ml"
            ))), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = let o =
              let c = c0 in
              
# 79 "parser.mly"
        ( c    )
# 666 "parser.ml"
              
            in
            
# 45 "parser.mly"
  ( Ebinop (o, e1, e2) )
# 672 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state * 'tv_expr) * (
# 8 "parser.mly"
       (Ast.binop)
# 682 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CMP _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | LCB | OR | RP | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv145 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _10 = () in
            let _v : 'tv_expr = let o =
              let _1 = _10 in
              
# 80 "parser.mly"
        ( Band )
# 712 "parser.ml"
              
            in
            
# 45 "parser.mly"
  ( Ebinop (o, e1, e2) )
# 718 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv147 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | CMP _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv157 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv153 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv151 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_routine = 
# 65 "parser.mly"
  ( Sprint e )
# 766 "parser.ml"
                 in
                _menhir_goto_routine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv155 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv159 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)) : 'freshtv162)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | CMP _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | LCB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
            | PRINT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
            | VAR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv164)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv165 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 833 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | CMP _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 855 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv169 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 862 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 867 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_routine = 
# 63 "parser.mly"
  ( Sind (x, e, s) )
# 874 "parser.ml"
             in
            _menhir_goto_routine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)) : 'freshtv172)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 886 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv185 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | CMP _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | DO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv181 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LCB ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv177 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
                | PRINT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | VAR ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv178)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv179 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)) : 'freshtv182)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv183 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_stmt) * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_stmt) * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_stmt)), _, (xs : 'tv_list_stmt_)) = _menhir_stack in
        let _v : 'tv_list_stmt_ = 
# 187 "/home/alexa/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 962 "parser.ml"
         in
        _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)) : 'freshtv84)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (sl : 'tv_list_stmt_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 28 "parser.mly"
      (Ast.file)
# 981 "parser.ml"
            ) = 
# 34 "parser.mly"
 ( sl )
# 985 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv89) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "parser.mly"
      (Ast.file)
# 993 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "parser.mly"
      (Ast.file)
# 1001 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv85) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 28 "parser.mly"
      (Ast.file)
# 1009 "parser.ml"
            )) : (
# 28 "parser.mly"
      (Ast.file)
# 1013 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv86)) : 'freshtv88)) : 'freshtv90)) : 'freshtv92)) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_list_stmt_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | _ ->
        _menhir_fail ()

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | MINUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (Ast.cnstt)
# 1046 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : (
# 7 "parser.mly"
       (Ast.cnstt)
# 1056 "parser.ml"
    )) : (
# 7 "parser.mly"
       (Ast.cnstt)
# 1060 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 39 "parser.mly"
  ( Ecst c )
# 1065 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 1072 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv77) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((id : (
# 9 "parser.mly"
       (string)
# 1082 "parser.ml"
    )) : (
# 9 "parser.mly"
       (string)
# 1086 "parser.ml"
    )) = _v in
    ((let _v : 'tv_id = 
# 69 "parser.mly"
          ( id )
# 1091 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv75) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_id) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOUBLEDOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv55 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EQUALS ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv51 * _menhir_state) * _menhir_state * 'tv_id))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | CST _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
                    | ID _v ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
                    | MINUS ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv52)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv53 * _menhir_state) * _menhir_state * 'tv_id))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)) : 'freshtv56)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv57 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)) : 'freshtv60)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv61 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)) : 'freshtv64)
    | MenhirState47 | MenhirState36 | MenhirState32 | MenhirState28 | MenhirState25 | MenhirState23 | MenhirState21 | MenhirState6 | MenhirState17 | MenhirState15 | MenhirState13 | MenhirState11 | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (var : 'tv_id)) = _menhir_stack in
        let _v : 'tv_expr = 
# 41 "parser.mly"
  ( Eident id )
# 1163 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv66)) : 'freshtv68)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv69 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | ID _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | MINUS ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv71 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
    | _ ->
        _menhir_fail ()) : 'freshtv76)) : 'freshtv78)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv13 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv15 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv19 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_routine)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 1231 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_expr) * (
# 8 "parser.mly"
       (Ast.binop)
# 1260 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv45 * _menhir_state) * _menhir_state * 'tv_id)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv50)

and _menhir_reduce12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmt_ = 
# 185 "/home/alexa/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 1314 "parser.ml"
     in
    _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | ID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | MINUS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | MINUS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 1381 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOUBLEDOTEQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 1393 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | ID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | MINUS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 1415 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 28 "parser.mly"
      (Ast.file)
# 1448 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FOREACH ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRINT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 219 "/home/alexa/.opam/4.02.3/lib/menhir/standard.mly"
  


# 1488 "parser.ml"
