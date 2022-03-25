invertir([],[]).
invertir([X|A],B):-
         invertir(A,C),
         append(C,[X],B).






