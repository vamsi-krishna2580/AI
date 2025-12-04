% Program 35: Fruit & Color using Backtracking
% --------------------------------------------------

fruit(apple, red).
fruit(banana, yellow).
fruit(grape, green).
fruit(grape, black).

color_of(F, C) :- fruit(F, C).

% Sample Queries:
% ?- color_of(apple, C).
% ?- fruit(F, yellow).
