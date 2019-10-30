married_(me, widow).
married_(redhair, dad).
married(X,Y) :- married_(Y,X); married_(X,Y).

parent(widow, redhair).
parent(dad, me).
parent(me,myboy).
parent(dad,dadson).

parent_of(A,B) :- parent(A,B); married(A,Z), parent(Z,B).

sibling(A,B) :- dif(A,B), parent_of(Z,A), parent_of(Z,B).

uncle_of(A,B) :- sibling(A,Z), parent_of(Z,B).

grandpa_of(A,B) :- parent_of(Z,B), parent_of(A,Z).
