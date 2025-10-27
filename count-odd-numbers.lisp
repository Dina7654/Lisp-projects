(defun count-odd-numbers (lst &optional (acc 0))
  (if (null lst)
      acc
      (count-odd-numbers (cdr lst)
                         (if (oddp (car lst))
                             (1+ acc)
                              acc))))
