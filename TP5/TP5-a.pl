phr --> verbe(P), exp, prep(P), exp.
verbe(P) --> [Mot] , {lexique(Mot,verbe,P)}.
prep(P) --> [Mot] , {lexique(Mot,prep),P=Mot}.
exp --> [N], {number(N)}.



lexique(additionner,verbe,et).
lexique(soustraire,verbe,de).
lexique(multiplier,verbe,par).
lexique(diviser,verbe,par).
lexique(et,prep).
lexique(de,prep).
lexique(par,prep).

