;;; Usage: sbcl --script driver.lisp group-type n
;;; e.g. sbcl --script driver.lisp  additive 10
;;; e.g. sbcl --script driver.lisp multiplicative 11
;;; Only additive and multiplicative groups congruent modulo n support so far.
(load "groups.lisp")
(defvar *type*)
(defvar *n*)
(defvar *group*)
(defvar *symbol-string*)
(defvar *operation-string*)

;;(format t "~&~S" *posix-argv*)
(cond ((< (length *posix-argv*) 2)
       (format *error-output* "~&Usage: sbcl --script driver.lisp group-type n")
       (quit)))

(setf *type* (second *posix-argv*))
(setf *n* (parse-integer (third *posix-argv*)))
;; (format t "~&~a" *type*)
;; (format t "~&~d" *n*)

(cond ((equalp *type* "additive")
       (setf *group* (groups:additive-group *n*))
       (setf *symbol-string* (concatenate 'string "Z" (third *posix-argv*)))
       (setf *operation-string* "+"))
      ((equalp *type* "multiplicative")
       (setf *group* (groups:multiplicative-group *n*))
       (setf *symbol-string* (concatenate 'string "Z/" (third *posix-argv*) "Z"))
       (setf *operation-string* "*"))
      ((equalp *type* "permutation")
       (setf *group* (groups:permutation-group *n*))
       (setf *symbol-string* (concatenate 'string "S" (third *posix-argv*)))
       (setf *operation-string* (string #\GREEK_SMALL_LETTER_SIGMA)))
      (t
       (format *error-output* "group type not supported")
       (quit)))

(groups:report *group* *symbol-string* *operation-string*)
