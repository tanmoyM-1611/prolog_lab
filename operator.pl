go:-write('Enter any number: '),read(Num1),nl,write('Enter any number: '),
    read(Num2),nl,multiple(Num1,Num2).

multiple(Num1, Num2):-
    Result is Num1*Num2,write(Result).
