:- dynamic yes/1,no/1.
start :- hypothesis(Disease),
      write('Patient may have: '),
      write(Disease),
      write(', Please go to nearest hospital imediately'),
      nl,
      if(Disease).


if(covid_19):-
         write('Advice and Sugestions:'),
         nl,
         write('1:Keep Quantine'),
         nl,
         write('2:Azithomithin'),
         nl,
         write('3:Paracitamol/Tab'),
         nl,
         write('4:Zinc & Vitamin-c'),
         nl,
         undo.

if(diabetes):-
         write('Advice and Sugestions:'),
         nl,
         write('1:Demo-1'),
         nl,
         write('2:Demo-2'),
         nl,
         undo.

if(thalasemia):-
         write('Advice and Sugestions:'),
         nl,
         write('1:Demo-3'),
         nl,
         write('2:Demo-4'),
         nl,
         undo.

hypothesis(covid_19)   :-
        has(fever),
	has(cough),
	has(tiredness),
	has(loss_of_taste_or_smell),
	has(difficulty_breathing),
        has(chest_pain).


hypothesis(diabetes)  :-
    has(feeling_more_thirsty_than_usual),
    has(urinating_often),
    has(losing_weight),
    has(feeling_tired_and_weak),
    has(feeling_irritable),
    has(having_mood_changes),
    has(having_blurry_vision),
    has(having_slow_healing_sores),
    has(getting_a_lot_of_infections).
hypothesis(thalasemia)     :-
  has(fatigue),
	has(weakness),
	has(pale_or_yellowish_skin),
	has(facial_bone_deformities),
        has(slow_growth),
        has(abdominal_swelling),
        has(dark_urine).

hypothesis(unknown) :-
    write("Unable to find a disease please contact nearest hospital for detailed checkup"),
    nl.

ask(Question) :-
    write('Does the patient have the following symptom: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail
	).

has(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
   ask(S))).



undo:-retract(yes(_)),fail.
undo:-retract(no(_)),fail.
undo.
