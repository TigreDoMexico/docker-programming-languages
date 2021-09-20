;; variaveis
;; simbolos

(defvar *name* 'David)
(defvar *ano* 17)

(defun printf (texto &optional conteudo)
  (princ (format texto conteudo)))

(defun quebraLinha (texto)
  (concat texto "\n"))

(defun is_maior_idade (ano)
  (if (>= ano 18) "Maior 18 anos" "Menor 18 anos" ))

(defun soma (&rest numeros)
  (let (resultado)
    (setq resultado 0)
    (dolist (num numeros resultado)
      (setq resultado (+ resultado num))
    )
  ))

;; (defun coordenadas (num)
;;   (values (expt num 2) (expt num 3)))

(defun dia-da-semana (dia)
  (cond
    ((equal dia 1) "Domingo")
    ((equal dia 2) "Segunda-Feira")
    ((equal dia 3) "Terça-Feira")
    ((equal dia 4) "Quarta-Feira")
    ((equal dia 5) "Quinta-Feira")
    ((equal dia 6) "Sexta-Feira")
    ((equal dia 7) "Sábado")
    (t "")
  ))

;; (defun print-lista (lista)
;;   (loop for x in lista do
;;     (printf "%S\n" x)))

(defun print-lista (lista)
  (while lista
    (printf "%S\n" (car lista))
    (setq lista (cdr lista))))

(defun reverse-list (list)
  (let (value)
    (dolist (element list value)
      (setq value (cons element value)))))

;(printf "OLA\n")
;(printf "MEU NOME É %s\n" *name*)

;(printf "SOMA = %d\n" (+ 2 2))
;(printf "SUBTRAÇÃO = %d\n" (- 2 2))
;(printf "DIVISÃO = %f\n" (/ 6 7))
;(printf "DIVISÃO = %.2f\n" (/ 6.0 7.0))

;(printf "É IGUAL: %S\n" (equal "string" "STRING"))

;(printf (quebraLinha (is_maior_idade *ano*)))
;(printf (quebraLinha (is_maior_idade (+ *ano* 10))))

;(printf (quebraLinha (dia-da-semana 4)))

;(print-lista '(Superman Batman Flash))

;(print-lista (reverse-list '(Superman Batman Flash Wonder-Woman Aquaman)))

;(printf "%S\n" (car '(Superman Batman Aquaman Flash Joker)))

;(printf "RESULTADO SOMA %d\n" (soma 1 2 3 4 5 6))

(defun times-3 (x) (* 3 x))
(defun times-4 (x) (* 4 x))

(defun tabuada (func number max_value)
  (dotimes (x max_value)
    (printf "%d x " number)
    (printf "%d = " x)
    (printf "%d\n" (funcall func x))
  )
)

;(tabuada #'times-3 3 11)
;(tabuada #'times-4 4 11)

(printf "%S\n" (mapcar (lambda (x) (* x 2)) '(1 2 3 4 5)))


