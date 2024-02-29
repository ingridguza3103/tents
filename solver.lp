% Tent must be adjacent to exactly one tree, ensuring variables are within grid boundaries
{ tent(X,Y) } :- tree(X-1,Y), X > 1, Y >= 1, Y <= 15.
{ tent(X,Y) } :- tree(X+1,Y), X < 15, Y >= 1, Y <= 15.
{ tent(X,Y) } :- tree(X,Y-1), Y > 1, X >= 1, X <= 15.
{ tent(X,Y) } :- tree(X,Y+1), Y < 15, X >= 1, X <= 15.

% Ensure no two tents are adjacent, including diagonally, by explicitly checking all adjacent positions
:- tent(X,Y), tent(X,Y+1).
:- tent(X,Y), tent(X,Y-1).
:- tent(X,Y), tent(X+1,Y).
:- tent(X,Y), tent(X-1,Y).
:- tent(X,Y), tent(X+1,Y+1).
:- tent(X,Y), tent(X+1,Y-1).
:- tent(X,Y), tent(X-1,Y+1).
:- tent(X,Y), tent(X-1,Y-1).

% Enforcing row and column tent counts accurately
:- rowsum(Row, Count), Count != #count { Y : tent(Row,Y) }.
:- colsum(Col, Count), Count != #count { X : tent(X,Col) }.

% Use a simpler directive for showing tents
#show tent/2.
