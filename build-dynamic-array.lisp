(defun build-dynamic-array (lst)
  (let ((arr(make-array 0 :adjustable t :fill-pointer 0)))
    (dotimes (i lst arr)
      (vector-push-extend i arr))))
