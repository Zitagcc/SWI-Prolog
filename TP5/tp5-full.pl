


phr(R) --> verbe(Mot,P), exp(N1), prep(P), exp(N2), {calcul(Mot,N1,N2,R)}.
verbe(Mot,P) --> [Mot] , {lexique(Mot,verbe,P)}.
prep(P) --> [Mot] , {lexique(Mot,prep),P=Mot}.
prep(P), [D] --> [Mot], {lexique(Mot,prepdet,P,D)}.
exp(N) --> [N], {number(N)}.
exp(N) --> det(G), nom(V,G,P1,P2), prep(P1), exp(N1), prep(P2), exp(N2), {calcul(V,N1,N2,N)}.
exp(N) --> det(G), nom1(V,G,P1,N2), prep(P1), exp(N1), {calcul(V,N1,N2,N)}.
det(G) --> [Det], {lexique(Det,det,G,_)}.
nom(V,G,P1,P2) --> [Mot], {lexique(Mot, nom, V, G, P1, P2)}.
nom1(V,G,P1,Val) --> [Mot], {lexique(Mot, nom1, V, G, P1, Val)}.


calcul( additionner, Term1, Term2, Res ) :- Res is Term1 + Term2 .
calcul( soustraire, Term1, Term2, Res ) :- Res is Term2 - Term1 .
calcul( multiplier, Term1, Term2, Res ) :- Res is Term1 * Term2 .
calcul( diviser, Term1, Term2, Res ) :- Res is Term1 / Term2 .

lexique(additionner,verbe,et).
lexique(soustraire,verbe,de).
lexique(multiplier,verbe,par).
lexique(diviser,verbe,par).

lexique(somme,nom,additionner,f,de,et).
lexique(différence,nom,soustraire,f,entre,et).
lexique(produit,nom,multiplier,m,de,par).
lexique(produit,nom,multiplier,m,de,et).
lexique(rapport,nom,diviser,m,entre,et).
lexique(successeur,nom1,additionner,m,de,1).
lexique(prédécesseur,nom1,soustraire,m,de,1).
lexique(double,nom1,multiplier,m,de,2).
lexique(triple,nom1,multiplier,m,de,3).
lexique(quadruple,nom1,multiplier,m,de,4).
lexique(quintuple,nom1,multiplier,m,de,5).
lexique(moitié,nom1,diviser,f,de,2).
lexique(tiers,nom1,diviser,m,de,3).
lexique(quart,nom1,diviser,m,de,4).
lexique(cinquième,nom1,diviser,m,de,5).
lexique(dizième,nom1,diviser,m,de,10).
lexique(racine,nom1,racine,m,de,2).

lexique(le,det,m,s).
lexique(la,det,f,s).
lexique(les,det,n,p).
lexique(du,prepdet,de,le).
lexique(des,prepdet,de,les).
lexique(et,prep).
lexique(de,prep).
lexique(par,prep).
lexique(entre,prep).
