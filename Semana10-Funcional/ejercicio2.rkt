(define (primer-numero lista)
  (cond ((null? lista) '())
        ((number?(car lista))
         (car lista))
        (else(primer-numero (cdr lista)))
        )
  )