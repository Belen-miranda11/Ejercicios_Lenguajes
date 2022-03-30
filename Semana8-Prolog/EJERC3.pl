entrada(paella).
entrada(gazpacho).
entrada(consome).
carne(fileteDeCerdo).
carne(polloAsado).
pescado(trucha).
pescado(bacalao).
postre(flan).
postre(nuecesConMiel).
postre(naranja).

caloria(paella, 200).
caloria(gazpacho, 150).
caloria(consome, 300).
caloria(fileteDeCerdo, 400).
caloria(polloAsado, 280).
caloria(trucha, 160).
caloria(bacalao, 300).
caloria(flan, 200).
caloria(nuecesConMiel, 500).
caloria(naranja, 50).

%Donde E es la entrada, PP el plato principal y P el postre.
comidaCompleta(E,PP,P):-
    entrada(E),
    platoPrincipal(PP),
    postre(P).

platoPrincipal(N):-
    carne(N);
    pescado(N).

caloriasTotal(E,PP,P, Sum):-
    caloria(E,X),
    caloria(PP,Y),
    caloria(P,Z),
    Sum is X+Y+Z.

comidasTotalLim(E,PP,P,Lim):-
    comidaCompleta(E,PP,P),
    caloriasTotal(E,PP,P,S),
    S < Lim.

ejercicio3(Lim,L):- findall([E,PP,P],comidasTotalLim(E,PP,P,Lim),L).

