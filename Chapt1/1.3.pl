
/* Consider the following alternative ancestor relation definition  */

ancestor(X,Y) :- parent(X,Y).

ancestor(X,Y) :- parent(Z,Y),
                 ancestor(X,Z).
