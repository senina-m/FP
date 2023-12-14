					; в лоб через циклы
(defun solve29_array ()
  (let ((res (list)))
    (loop for a from 2 to 100 append (loop for b from 2 to 100 do (pushnew (expt a b) res)))
    (loop :for i :in res :counting t)))

(defun rm_dublicates (list)
  (cond
   ((null list) nil)
   ((member (car list) (cdr list)) (rm_dublicates (cdr list)))
   (t (cons (car list) (rm_dublicates (cdr list))))))

(defun solve29_map ())
(reduce #'+
	(mapcar (lambda(x) 1)
		(rm_dublicates
		 (loop for a from 2 to 100 append
		       (loop for b from 2 to 100
			     collect (expt a b))))))
