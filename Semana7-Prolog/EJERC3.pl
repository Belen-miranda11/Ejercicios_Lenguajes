%Verifica en subconj(S1,S) si S1 pertenece a S
subconj([],_).
subconj([X|S1],[X|S]):-
         subconj(S1,S).



