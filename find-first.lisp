(defun find-first (n,y,f)
  (dolist (x n nil)
    (when (funcall f x y)
      (return x))))
