// Колодец Беорунна: Казармы наемников Солдат-мужчина Этот человек, видимо, один из многих солдат, которые были призваны в армию Союза Лордов

BEGIN ~NWSOLDI6~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)GlobalGT("NWRolganConvicted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)Global("NWRolganConvicted","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,5)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

