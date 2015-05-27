s(L) :- sS(L,[]).

sS([a|L],M) 	:- sT(L,M).

sT([a|L],M) 	:- sX(L,M).
st([b,a|L],N) 	:- sT(L,M),
				   sV(M,N).

sX([],[]).
sX([a|L],[a|L]).
sX([c|L],[c|L]).
sX([a|L],[a|L]).
sX([b|L],N) 	:- sT(L,M),
				   sV(M,N).

sV([a,c|L],L).
sV([c,a|L],L).
