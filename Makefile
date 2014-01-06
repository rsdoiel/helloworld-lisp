#
# Build a standalone helloworld with ECLS
#
helloworld: helloworld.lisp
	ecl -load build.lisp

clean:
	rm helloworld helloworld.o

