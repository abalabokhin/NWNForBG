// Форт Илкард: логово орков Следопыт-орк. Орки - агрессивная человекоподобная раса, они нападают, грабят и воюют с другими созданиями. Их ненависть к эльфам и гномам насчитывает уже многие поколения.

BEGIN ~PATROL09~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Скууучно. Ненавижу стоять на страже.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Помогите! Помогите! Я вижу гнусных нарушителей!~
  IF ~~ THEN DO ~SetGlobal("PatrolHostile","MYAREA",1)Enemy()~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Хе-хе-хе. Скоро мои товарищи будут здесь! Но вы не доживете до встречи с ними. Хе-хе-хе.~
  IF ~~ THEN DO ~SetGlobal("PatrolHostile","MYAREA",1)Enemy()~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Нарушитель! Убейте его! УБЕЙТЕ ЕГО!~
  IF ~~ THEN DO ~SetGlobal("PatrolHostile","MYAREA",1)Enemy()~ EXIT
END

