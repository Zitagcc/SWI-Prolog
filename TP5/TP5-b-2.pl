phr(R) --> verbe(Mot,P), exp(T1), prep(P), exp(T2), {calcul(Mot,T1,T2,R)}.
verbe(Mot,P) --> [Mot] , {lexique(Mot,verbe,P)}.
prep(P) --> [Mot] , {lexique(Mot,prep),P=Mot}.
exp(N) --> [N], {number(N)}.



lexique(additionner,verbe,et).
lexique(soustraire,verbe,de).
lexique(multiplier,verbe,par).
lexique(diviser,verbe,par).
lexique(et,prep).
lexique(de,prep).
lexique(par,prep).

calcul(additionner,Term1, Term2,Res):- Res is exp1 + exp2.
calcul( soustraire, Term1, Term2, Res ) :- Res is Term2 - Term1 .
calcul( multiplier, Term1, Term2, Res ) :- Res is Term1 * Term2 .
calcul( diviser, Term1, Term2, Res ) :- Res is Term1 / Term2 .

