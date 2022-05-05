;recibe la n-esima posición, la lista donde se busca
;se hace uso de funciones predefinidas
;(ejercicio5.1 6 '(7 8 5 4 1 2 3))
(define (ejercicio5.1 n lista)
  (cond ((null? lista)'())
        (else(list-ref lista (- n 1)))
        )
  )
;recibe la n-esima posición, la lista donde se busca y la lista de indices
; de esta lista, o sea debe tener el mismo largo
;(ejercicio5.2 6 '(7 8 5 4 1 2 3) '(1 2 3 4 5 6 7))
(define (ejercicio5.2 n lista listaInd)
  (map (lambda (x y) (cond ((equal? n y)
                            x)
                           (else'())
                           )
         )lista listaInd)
  )