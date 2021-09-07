;Criando uma lista
(setq linguagens '(java delphi php))

;Adicionando um elemento da lista
(setq linguagens (cons 'lisp linguagens))

(princ "LISTA DE LINGUAGENS\n")
(princ linguagens)
(princ "\n")

;Removendo um elemento da lista
(setq linguagens (remove 'java linguagens))

(princ "NOVA LISTA DE LINGUAGENS\n")
(princ linguagens)
(princ "\n")

;; (setq animals '(gazelle giraffe lion tiger))

;; (defun print-elements-of-list (list)
;;   "Print each element of LIST on a line of its own."
;;   (while list
;;     (print (car list))
;;     (setq list (cdr list))))

;; (print-elements-of-list animals)
