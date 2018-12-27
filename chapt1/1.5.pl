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