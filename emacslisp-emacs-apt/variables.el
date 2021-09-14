;; variaveis
;; simbolos

(defvar *name* 'David)
(defvar *number* 0)

(setf *number* 10)

(defun ola-mundo (name)
  (princ (concat "OLÁ" (string name) "\n" )))

(ola-mundo *name*)

(princ (concat "Resultado Soma: " (number-to-string (+ *number* 10)) "\n"))
(princ (concat "Resultado Subtração: " (number-to-string (- *number* 10)) "\n"))
(princ (concat "Resultado Multiplicação: " (number-to-string (* *number* 10)) "\n"))
(princ (concat "Resultado Divisão: " (number-to-string (/ *number* 3)) "\n"))

(format nil "~a" "str")
(format nil "~a" 'str)



