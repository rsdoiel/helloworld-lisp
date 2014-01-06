;;;
;;; Build helloworld.lisp as a standalone binary
;;; using ECLS.
;;;
(ext:setenv "LISP" "ecl")
(compile-file "helloworld.lisp" :system-p t)
(c:build-program "helloworld" :lisp-files '("helloworld.o"))
(quit)

