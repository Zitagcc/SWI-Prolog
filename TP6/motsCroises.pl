:- consult('lexique.pl').

motcode(Lettres):-mot(M),atom_chars(M,Lettres).

aff(L):-name(M,L),write(M),nl.


grille44:-motcode([A,B,C,D]),motcode([A,E,I,M]),[A,B,C,D]\=[A,E,I,M],
motcode([I,J,K,L]),motcode([M,N,O,P]),motcode([J,N]),motcode([C,G,K,O]),
motcode([D,H,L,P]),motcode([G,H]),aff([A,B,C,D]),aff([E,' ',G,H]),
aff([I,J,K,L]),aff([M,N,O,P]),nl.
