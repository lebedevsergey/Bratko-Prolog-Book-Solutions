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
