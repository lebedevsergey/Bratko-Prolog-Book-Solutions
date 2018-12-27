
odd_len([X]).
odd_len([X | L]) :- even_len(L).

even_len([]).
even_len([X|L]) :- odd_len(L).
