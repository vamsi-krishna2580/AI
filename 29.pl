% Program 29: Planets Database
% ----------------------------

planet(mercury, 58).
planet(venus, 108).
planet(earth, 150).
planet(mars, 228).

% Query distance of a planet
distance_from_sun(P, D) :- planet(P, D).

% Sample Queries:
% ?- distance_from_sun(earth, D).
% ?- planet(P, Dist).
