helloworld-lisp
===============

Example Lisp Hello World with compile to standalone program via ECLS's Lisp Compiler. With this simple approach
we use a short lisp program to run the ECL compiler and a Makefile to orchestrate our usual Unix/Linux
make commands.

Compiling helloworld.lisp into a standalone program can be done with two function calls. One creates
a .o file the other combines that with ECL's environment to build a "OS native" binary.

```lisp
    ; Compile the Lisp code for helloworld.lisp
    (compile-file "helloworld.lisp" :system-p t)
    ; Now take the output compile and make it a standalone "OS native" binary.
    (c:build-program "helloworld" :lisp-files '("helloworld.o"))
```

Wrapping this in a nice function is left as an exercise for the reader.
