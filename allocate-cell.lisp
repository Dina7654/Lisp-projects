(defparameter *array-size* 100)
(defparameter *cell-array* (make-array *array-size* :initial-element nil))
(defparameter *free-index* 0)

(defun allocate-cell (data next-index)
(if (>= *free-index* *array-size*)
(error "Backing array is full.")
(let ((index *free-index*))
(setf (aref *cell-array* index) (vector data next-index))
(incf *free-index*)
index)))

(defun make-empty-list ()
(vector nil 0))

(defun my-cons (item lst)
  (let ((new-index (callocate-cell item (aref lst 0))))
    (setf (aref lst 0) new-index)
    (incf (aref lst 1))
    lst))

(defun my-car (lst)
  (let ((head (aref lst 0)))
    (if head
        (aref (aref *cell-array* head) 0)
        nil)))

(defun my-cdr (lst)
  (let ((head (aref lst 0)))

    (if head
        (let ((next (aref (aref *cell-array* head) 1)))
          (vector next (1- (aref lst 1))))
        (vector nil 0))))
