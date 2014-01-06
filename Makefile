#
# Build a standalone hello world with ECLS
#
helloworld: helloworld.lisp
	ecl -load build.lisp

clean:
	rm helloworld helloworld.o

