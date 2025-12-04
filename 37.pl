% Program 37: Medical Diagnosis
% --------------------------------

symptom(fever, malaria).
symptom(headache, malaria).
symptom(cough, flu).
symptom(cold, flu).

diagnose(Symptom, Disease) :-
    symptom(Symptom, Disease).

% Sample Queries:
% ?- diagnose(fever, D).
% ?- symptom(cold, Disease).
