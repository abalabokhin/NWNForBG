BEGIN ~NWGUARD9~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,2)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,3)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,4)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,5)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,6)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)GlobalGT("MakingMedicine","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)GlobalGT("MakingMedicine","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @2
  IF ~~ THEN EXIT
END

