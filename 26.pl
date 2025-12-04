% Program 26: Sum integers from 1 to N
% ------------------------------------

% Base case: sum of numbers up to 0 is 0.
sum_upto(0, 0).

% Recursive case:
% sum_upto(N) = N + sum_upto(N-1)
sum_upto(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_upto(N1, S1),
    Sum is S1 + N.

% Sample Queries:
% ?- sum_upto(5, S).
% ?- sum_upto(10, S).
