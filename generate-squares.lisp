(defun generate-squares (n)
  (let ((result nil))
    (dotimes (i n (reverse result))
      (push (* (1+ i) (1+ i)) result))))
