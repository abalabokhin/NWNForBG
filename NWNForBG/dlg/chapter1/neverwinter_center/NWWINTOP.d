// Порт-Лласт Винторп и Герцог Человек мужчина Заданий нет 

BEGIN ~NWWINTOP~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)Global("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,3)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,5)~ THEN BEGIN 7 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,6)~ THEN BEGIN 8 // from:
  SAY @8
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)~ THEN BEGIN 9 // from:
  SAY @9
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,8)~ THEN BEGIN 10 // from:
  SAY @10
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @11
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY @12
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,10)~ THEN BEGIN 13 // from:
  SAY @13
  IF ~~ THEN EXIT
END

