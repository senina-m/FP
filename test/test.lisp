(load "~/quicklisp/setup.lisp")
(load "src/euler2.lisp")
(load "src/euler29.lisp")
(ql:quickload :lisp-unit)

(lisp-unit:define-test solve2_array
    (lisp-unit:assert-equal 4613732 (solve2_array)))

(lisp-unit:define-test solve2_recursion
    (lisp-unit:assert-equal 4613732 (solve2_recursion 1 1)))

(lisp-unit:define-test solve2_map
    (lisp-unit:assert-equal 4613732 (solve2_map)))

(lisp-unit:define-test solve29_array
    (lisp-unit:assert-equal 9183 (solve29_array)))

(lisp-unit:define-test solve29_map
    (lisp-unit:assert-equal 9183 (solve29_map)))

(lisp-unit:run-tests)
