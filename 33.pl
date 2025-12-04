% Program 33: Diet Suggestion Based on Disease
% ------------------------------------------------

diet(diabetes, low_sugar).
diet(bp, low_salt).
diet(obesity, low_calorie).

suggest_diet(Disease, DietPlan) :-
    diet(Disease, DietPlan).

% Sample Queries:
% ?- suggest_diet(diabetes, Plan).
% ?- diet(obesity, Plan).
