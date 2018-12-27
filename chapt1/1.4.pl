/**
Define the relation grandchild using the parent relation

grandchild(jim,pat).
False
  
grandchild(jim,bob).
True

*/

grandchild(X,Y) :- parent(Z,X),
                   parent(Y,Z).
