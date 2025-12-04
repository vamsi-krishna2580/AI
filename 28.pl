% Program 28: Student–Teacher–Subject–Code database
% --------------------------------------------------

teaches(ram, maths, 101).
teaches(seema, physics, 102).
teaches(john, chemistry, 103).

student(anu, maths).
student(rahul, physics).

% Find teacher based on student's subject.
find_teacher(Student, Teacher) :-
    student(Student, Sub),
    teaches(Teacher, Sub, _).

% Sample Queries:
% ?- find_teacher(anu, T).
% ?- teaches(Teacher, physics, Code).
