// Порт-Лласт Жена фермера 1 Заданий нет

BEGIN ~NWFARMW1~

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,2)~ THEN BEGIN 2 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,3)~ THEN BEGIN 3 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,4)~ THEN BEGIN 4 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,5)~ THEN BEGIN 5 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,6)~ THEN BEGIN 6 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TalkedTo","LOCALS",1)~ THEN BEGIN 7 // from:
  SAY @6
  IF ~~ THEN DO ~SetGlobal("TalkedTo","LOCALS",2)~ EXTERN ~NWBOYPL~ 7
END
