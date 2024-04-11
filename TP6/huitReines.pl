enprise(A,[A|_],_). 

enprise(A,[N|_],Z):-A is N-Z.
enprise(A,[N|_],Z):-A is N+Z.

enprise(A,[_|L],Z):-Z1 is Z+1,enprise(A,L,Z1).

placer([A,B,C,D,E,F,G,H],[H,G,F,E,D,C,B,A]).

placer(L,R):-between(1,8,A),not(enprise(A,L,1)),placer([A|L],R).


solution(R):-placer([],R).



