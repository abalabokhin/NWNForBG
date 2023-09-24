// Центр Невервинтера   Маска Лунного Камня  Завсегдатай Человек, мужчина  Этот человек выглядит вполне довольным, несмотря на суматоху снаружи. Похоже, Маска Лунного Камня и вправду место, где неприятности забываются.

BEGIN ~NWMCUST2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN BEGIN 7 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 8 // from:
  SAY @8
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)!Class(LastTalkedToBy(Myself),MAGE_ALL)!Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN BEGIN 9 // from:
  SAY @9
  IF ~~ THEN EXIT
END

