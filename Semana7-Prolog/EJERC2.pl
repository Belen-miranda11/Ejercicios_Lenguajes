largo([],0).
largo([_|Tail], L) :-
          largo(Tail,L1),
          L is L1+1.

largopar(L):-
          largo(L,X),
          0 is X mod 2.
largoimpar(L):-
          largo(L,X),
          1 is X mod 2.
