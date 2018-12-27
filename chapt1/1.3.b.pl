/** 
For all X, if X has a child who has a sister then X has two children.

hastwochildren(bob). 
True

hastwochildren(tom).
True

*/


hastwochildren(X) :- parent(X,Y),
                     sister(Y,_).
