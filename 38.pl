% Program 38: Forward Chaining
% ---------------------------------

fact(rain).
fact(cloudy).

rule(wet) :- fact(rain).
rule(cold) :- fact(cloudy).

infer(X) :- rule(X).

% Sample Queries:
% ?- infer(wet).
% ?- infer(cold).
