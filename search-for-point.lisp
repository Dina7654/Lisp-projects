(defun search-for-point (points target)
  (let ((i 0))
    (dolist (p points nil)
      (when (equal p target) (return nil))
      (incf i))

    )
  )
