#
# Link in new primitives implemented in C. 
#
# We are using a trick here: the C code is aggregated into a library
# libpath.a; to make sure it gets built it is named as an explicit target
# when invoking ocamlbuild. The linking step is handled by passing 
# the library using -lflag to the linker. This works around the problem
# that I don't know how to specify a C library as a dependency for a binary.
#

OCB_FLAGS = -I src -I lib -lflag lib/libpath.a
OCB = 		ocamlbuild $(OCB_FLAGS)

all: 		
			$(OCB) libpath.a main.byte main.native

test: 		all
			./main.native . ./src 
			./main.byte   . ./src 
clean:
			$(OCB) -clean

.PHONY: 	all clean byte native profile debug test
