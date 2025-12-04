% Program 34: Monkey–Banana Problem (Simplified)
% -----------------------------------------------------

state(atdoor, onfloor, atwindow, hasnot).

% Action: grab bananas
move(state(atdoor, onfloor, atwindow, hasnot),
     grab,
     state(atwindow, onbox, atwindow, has)).

solution(Result) :-
    move(state(atdoor, onfloor, atwindow, hasnot), grab, Result).

% Sample Queries:
% ?- solution(Result).
% ?- move(state(atdoor,onfloor,atwindow,hasnot), Action, NewState).
