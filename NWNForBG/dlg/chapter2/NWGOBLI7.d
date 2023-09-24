// Северная дорога, пещеры гоблинов и орков - Гоблин

BEGIN ~NWGOBLI7~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END
