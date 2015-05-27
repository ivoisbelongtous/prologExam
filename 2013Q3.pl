s(L) :- sS(L,[]).

sS([a|L],M) 	:- sT(L,M).
%% S --> aT

sT([a|L],M) 	:- sX(L,M).
%% T --> aX
st([b,a|L],N) 	:- sT(L,M),
				   sV(M,N).
%% T --> baTV

sX([],[]).
sX([a|L],[a|L]). %
sX([c|L],[c|L]). % not sure what these do
sX([a|L],[a|L]). %
%% X --> e

sX([b|L],N) 	:- sT(L,M),
				   sV(M,N).
%% X --> bTV

sV([a,c|L],L).
%% V --> ac
sV([c,a|L],L).
%% V --> ca
