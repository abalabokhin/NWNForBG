// Порт-Лласт Таверна Моряк Заданий нет

BEGIN ~NWSAILON~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END
