// Маска лунного камня  Тамора гном   Благодаря своей веселой манере ухаживать, этот симпатичный карлик значительно облегчил страдания раненых солдат.

BEGIN ~NWTAMOR2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  GlobalGT("NWLuceJob","GLOBAL",1)~ THEN GOTO 1
  IF ~  GlobalLT("NWLuceJob","GLOBAL",2)~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~  GlobalGT("NWLuceJob","GLOBAL",1)~ THEN GOTO 4
  IF ~  GlobalLT("NWLuceJob","GLOBAL",2)~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 8 // from:
  SAY @8
  IF ~~ THEN EXIT
END

