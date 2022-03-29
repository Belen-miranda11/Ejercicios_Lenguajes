
femenino(petra).
femenino(carmen).
femenino(maria).
femenino(rosa).
femenino(ana).
femenino(cande).
femenino(luisa).
madre(petra, juan).
madre(petra, rosa).
madre(carmen, pedro).
madre(maria, ana).
madre(maria, enrique).
madre(rosa, raul).
madre(rosa, alfonso).
madre(rosa, cande).
madre(carmen,luisa).
madre(luisa, luisito).
masculino(angel).
masculino(pepe).
masculino(juan).
masculino(pedro).
masculino(enrique).
masculino(raul).
masculino(alfonso).
masculino(luisito).
padre(angel, juan).
padre(angel, rosa).
padre(pepe, pedro).
padre(juan, ana).
padre(juan, enrique).
padre(pedro, raul).
padre(pedro, alfonso).
padre(pedro, cande).


progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X,Y).
abuelo(X, Y) :- padre(X, Z), progenitor(Z, Y).
abuela(X, Y) :- madre(X, Z), progenitor(Z, Y).

hermana(X,Y) :- femenino(X),progenitor(Z,X), progenitor(Z,Y),  X\=Y.

%Función para buscar las tías
tia(X,Y) :- femenino(X), hermana(X, Z), progenitor(Z, Y).

%Miembro de una lista.
miembro(N,[N|_]).
miembro(N,[_|Tail]) :-
    miembro(N,Tail).

%Eliminar los elementos repetidos de una lista
elimTiasR([],[]).
elimTiasR([N|Tail],S):-
    miembro(N,Tail),!,
    elimTiasR(Tail,S).
elimTiasR([N|Tail],[N|S]):-
    elimTiasR(Tail,S).

%Muestra la lista de todas las tías con repeticiones y sin repeticiones.
ejercicio2(T,S,L,X) :-
    findall([T,S],tia(T,S),L),
    elimTiasR(L,X).
