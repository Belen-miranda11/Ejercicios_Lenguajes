
(define (filtrar lista)
  (cond ((null? lista) '())
        ((not(boolean?(member (car lista) (cdr lista))))
          (filtrar (cdr lista)))
        (else (cons (car lista) (filtrar(cdr lista)))
              )
        )
  )