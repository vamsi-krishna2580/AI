% Program 32: Family Tree Relations
% ----------------------------------

% Basic facts
female(pam). female(liz). female(ann). female(pat).
male(tom). male(bob). male(jim).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(pat, jim).
parent(bob, ann).

% Relations:
mother(M, C) :- female(M), parent(M, C).
father(F, C) :- male(F), parent(F, C).

grandfather(GF, C) :- male(GF), parent(GF, X), parent(X, C).
grandmother(GM, C) :- female(GM), parent(GM, X), parent(X, C).

sister(S, X) :- female(S), parent(P, S), parent(P, X), S \= X.
brother(B, X) :- male(B), parent(P, B), parent(P, X), B \= X.

% Sample Queries:
% ?- mother(pam, Child).
% ?- sister(liz, Who).
