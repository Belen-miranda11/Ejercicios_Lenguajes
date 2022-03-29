
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
tía(X,Y) :- femenino(X), hermana(X, Z), progenitor(Z, Y).
