(defun fibonacci-iterative (n)

  (do ((i 0 (1+ i))
       (a 0 b)
       (b 1 (+ a b)))

      ((= i n)a))
  )
