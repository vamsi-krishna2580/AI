% Program 31: Bird can fly or not
% ---------------------------------

bird(sparrow).
bird(eagle).
bird(penguin).

cannot_fly(penguin).

% A bird can fly if it is a bird and NOT in cannot_fly list
can_fly(X) :- bird(X), \+ cannot_fly(X).

% Sample Queries:
% ?- can_fly(sparrow).
% ?- can_fly(penguin).
