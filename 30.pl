% Program 30: Towers of Hanoi
% ----------------------------

% Move 1 disk
hanoi(1, A, B, _) :-
    format('Move disk from ~w to ~w~n', [A, B]).

% Move N disks: recursive steps
hanoi(N, A, B, C) :-
    N > 1,
    M is N - 1,
    hanoi(M, A, C, B),
    hanoi(1, A, B, _),
    hanoi(M, C, B, A).

% Sample Queries:
% ?- hanoi(2, left, right, middle).
% ?- hanoi(3, a, b, c).
