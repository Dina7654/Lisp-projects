(defun make-point-list (x y)
  (return (list (x y))))

(defun get-point-list-x (point)
  (return (first point)))

(defun get-point-list-y (point)
  (return (second point)))

(defun distance-between-points (point1 point2)
  (let ((x2 (first point2))
        (x1 (first point1))
        (y2 (second point2))
        (y1 (second point1))
        (x(-(+(* x2 x2)(* x1 x1))(* 2 x1 x2)))
        (y(-(+(* y2 y2)(* y1 y1))(* 2 y1 y2)))))
  (return (sqrt (x y))))
