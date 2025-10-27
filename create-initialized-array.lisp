(defun create-initialized-array(n)
  (let ((arr (make-array size)))
    (dotimes (i size arr)
      (setf (aref arr i)i))))
