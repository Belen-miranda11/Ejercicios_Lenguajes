;recibe dos listas
;obtiene la lista de listaTrue verifica que no exista ningún #f en esta
;(subconjunto '(1 2 7) '(1 4 8 2 9 3))
;#f
(define (subconjunto list1 list2)
  (cond((member #f (listaTrue list1 list2))
     #f)
       (else #t))
  )
;crea una lista de #t y #f dependiendo si cada elemento del subconjunto
;estaba en la lista
;> (listaTrue '(1 2 7) '(1 4 8 2 9 3))
;(#t #t #f)
(define (listaTrue list1 list2)
  (map (lambda (x) (cond ((not(boolean?(member x list2)))
                          #t)
                         (else #f)))
       list1)
  )