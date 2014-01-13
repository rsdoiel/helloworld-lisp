;;;
;;; make-me - build a standalone binary from a lisp file
;;; using ECLS.
;;;
(ext:setenv "LISP" "ecl")
(format t "DEBUG Raw arg: ~S~%" ext:*command-args*)

(defun make-me (output-name lisp-file other-lisp-files)
  (progn
    (terpri)
    (format t "output-name: ~S~%" output-name)
    (format t "lisp-file: ~S~%" lisp-file)
    (format t "other-lisp-files: ~S~%" other-lisp-files)
;    (compile-file lisp-file :system-p t)
;    (c:build-program output-name :lisp-files lisp-files)
    (terpri)
    ))

(make-me (cadr ext:*command-args*) (car (cddr ext:*command-args*)) (cddr (cddr ext:*command-args*)))

(quit)
