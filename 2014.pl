a(_,0).
a(N,A) :-   N > 0,
            M is N - 1,
            a(M,B),
            A is B + 1.

b(0).
b(1).
b(N) :- a(N,A),
        A > 1,
        A * A =< N,
        0 =:= N mod A.
c(1).

d(N) :- b(N),
        !,
        c(0).

d(_).

e(N,L) :- findall(P,(a(N,P), d(P)),L).