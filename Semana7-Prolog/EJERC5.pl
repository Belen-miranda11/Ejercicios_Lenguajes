partir([ ],_,[ ],[ ]).
partir([A|B],X,[A|C],D):-
		X >= A,
		partir(B,X,C,D),!.
partir([A|B],X,C,[A|D]):-
		X < A,
		partir(B,X,C,D),!.



