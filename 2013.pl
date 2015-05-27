a(X,Y) :- 0=:= X mod 4,!,
	  Y is X div 2.

a(X,Y) :- 1=:= X mod 4,!,
 	  Y is (X+1) div 2.

a(X,Y) :- 2=:= X mod 4,!,
	  Y is X div 2.

a(X,Y) :- 3=:= X mod 4,!,
	  Y is ((3 * X) + 1) div 2.


b(X,[X|Z]) :- X<12,!,
	      a(X,Y),
	      b(Y,Z).
b(X,Y).

c(X,X).

c(X,Y) :- a(Y,Z),
    	  c(X,Z).	
