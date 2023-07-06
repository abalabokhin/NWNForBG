// Колодец Беорунна: бар Солдат-мужчина Этот человек, видимо, один из многих солдат, которые были призваны в армию Союза Лордов.

BEGIN ~CUSTOM32~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)Global("ILCARD_Free","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

