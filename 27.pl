% Program 27: Database with NAME and DOB
% --------------------------------------

person(john, '12-05-1999').
person(ram, '01-02-2000').
person(sita, '10-10-1998').

% Query DOB of a person
get_dob(Name, DOB) :- person(Name, DOB).

% Sample Queries:
% ?- get_dob(john, D).
% ?- person(Name, '01-02-2000').
