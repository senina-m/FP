; в лоб через циклы
(defun solve2_array ()
    (loop for a = 1 then b and b = 1 then (+ a b) 
        while (< a 4000000) 
        when (evenp a) sum a
    )
)

; рекурсия
(defun solve2_recursion (a b)
  (if (< b 4000000) (+ (solve2_recursion b (+ a b)) (if (evenp b) b 0)) 0))

(defun solve2_map ()
    (reduce #'+ (mapcar #'(lambda(x) (if (evenp x) x 0)) (loop for a = 1 then b and b = 1 then (+ a b)
                        while (< a 4000000)
                        collect a))
    )
)
