% Program 39: Backward Chaining
% ----------------------------------

likes(ram, mango).
likes(ram, apple).

love(X, Y) :- likes(X, Y).

% Sample Queries:
% ?- love(ram, What).
% ?- likes(ram, Fruit).
