parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

/** 
Who is Pat's parent ?
parent(X,pat). 

Bob 

*/
    
/** 2.Does Liz have a child ?
parent(liz,X). 

False

*/

/** 3.Who is Pat's grandparent ?
parent(X,Y),parent(Y,pat). 

(X = Tom ; X = Pam) 
(Y = Bob)

*/

