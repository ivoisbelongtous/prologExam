a([a]).
a([b]).
a([c]).
s([a|T]) := t(T).
s([b|T]) := t(T).
s([c|T]) := t(T).

t([a|S]) :- s(S).