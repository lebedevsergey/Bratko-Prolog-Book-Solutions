male(tom).
male(bob).
male(jim).
female(pam).
female(liz).
female(pat).
female(ann).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

mother(X,Y) :- 
parent(X,Y), 
female(X).

grandparent(X,Z) :- 
parent(X,Y),
parent(Y,Z).

sister(X,Y) :-  
parent(Z,X),
parent(Z,Y),
female(X),
X \= Y.


/** 
Everybody who has a child is happy

happy(bob).
True

happy(joe).
False

*/

hasachild(bob).
hasachild(jackie).
hasachild(ann).

happy(X) :- hasachild(X).

/** 
For all X, if X has a child who has a sister then X has two children.

hastwochildren(bob). 
True

hastwochildren(tom).
True

*/


hastwochildren(X) :- parent(X,Y),
                     sister(Y,_).

/**
Define the relation grandchild using the parent relation

grandchild(jim,pat).
False
  
grandchild(jim,bob).
True

*/

grandchild(X,Y) :- parent(Z,X),
                   parent(Y,Z).



/**
Define the relation aunt(X,Y) in terms of the relations parent and sister
aunt(ann,jim).
True
  
aunt(bob,pam).
False

is Liz aunt of Pat?
aunt(liz,pat).
True

*/

aunt(X,Y) :- 
parent(Z,Y),
sister(X,Z).
