disease(cold).
disease(flu).
disease(allergy).

%Symptoms
symptoms(cold, [runny_nose, sneezing, sore_throat]).
symptoms(flu, [high_fever, cough, body_ache]).
symptoms(allergy, [runny_nose, sneezing, itchy_eyes]).

:-dynamic yes/1.

ask(S) :-
    write('Do you have '), write(S), write('? (yes/no): '),
    read(yes),
    assertz(yes(S)).
 %that "assertz" creat the fact based on user input kind of something like that

check([]).
check([H|T]) :-
    (   yes(H) ->   true ; ask(H) ),
    check(T).

diagnose(D) :-
    symptoms(D, List),
    check(List).


%Main
%"retractall"  all yes variable it'll count    
start:-
    retractall(yes(_)),
    findall(D,(disease(D),diagnose(D)),Result),
    write('Possivble : '),write(Result),nl,
    retractall(yes(_)).
