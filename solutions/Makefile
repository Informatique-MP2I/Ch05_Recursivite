SRC := Grimaud_Recursion
EXE := recursion

.PHONY: clean

$(EXE): $(SRC).ml
	ocamlopt -o $@ $<

clean:
	rm *.cmi *.cmo *.cmx $(SRC).o $(EXE) *~
