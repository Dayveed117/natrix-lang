CMO= lexer.cmo parser.cmo interpretador.cmo main.cmo
GENERATED = ast.cmi lexer.ml parser.ml parser.mli
BIN= natrix
FLAGS= -annot -g

natrix: $(CMO)
	ocamlc $(FLAGS) -o $@ nums.cma $(CMO)

.SUFFIXES: .mli .ml .cmi .cmo .mll .mly

.mli.cmi:
	ocamlc $(FLAGS) -c  $<

.ml.cmo:
	ocamlc $(FLAGS) -c $<

.mll.ml:
	ocamllex $<

.mly.ml:
	menhir -v --infer $<

.mly.mli:
	menhir -v --infer $<

clean:
	rm -f *.cm[io] *.o *.annot *~ natrix $(GENERATED)
	rm -f parser.output parser.automaton

.depend depend:$(GENERATED)
	rm -f .depend
	ocamldep *.ml *.mli > .depend

include .depend