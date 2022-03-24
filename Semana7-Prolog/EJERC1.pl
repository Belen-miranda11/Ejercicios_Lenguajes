sumlist([], 0).
sumlist([X|Tail], S):-
          sumlist(Tail, S2),
          S is S2 + X.
