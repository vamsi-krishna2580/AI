% Program 36: Best First Search (Simplified)
% -------------------------------------------

edge(a, b, 2).
edge(a, c, 1).
edge(c, d, 3).

h(b, 3).
h(c, 1).
h(d, 0).

best_first(Start, Goal, Path) :- bfs([[Start]], Goal, Path).

bfs([[Goal|T]|_], Goal, [Goal|T]).
bfs([[X|T]|Rest], Goal, Path) :-
    findall([Y, X|T], edge(X, Y, _), NewPaths),
    append(Rest, NewPaths, Queue),
    bfs(Queue, Goal, Path).

% Sample Queries:
% ?- best_first(a, d, Path).
% ?- bfs([[a]], d, Path).
