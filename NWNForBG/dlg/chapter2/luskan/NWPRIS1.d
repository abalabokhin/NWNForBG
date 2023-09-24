// Лускан Башня хозяина 7-этаж Заключенный Большие синяки, порезы и другие следы пыток говорят о том, что этот мужчина - заключенный.

BEGIN ~NWPRIS1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,2)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,3)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,4)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,5)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END 

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,6)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

