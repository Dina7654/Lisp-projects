(defun list-sum (lst)
  (if (null lst)
      0
      (+ (first lst) (list-sum (rest lst)))))


