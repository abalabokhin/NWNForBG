// Крепость племени Лося, Женщина племени Лося. Эта женщина - член племени Лосей из Утгардта.

BEGIN ~NWMOOSES~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)!Dead("NWZOKAN")Global("ZokanHostile","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)!Dead("NWZOKAN")Global("ZokanHostile","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("NWZOKAN")Global("ZokanHostile","GLOBAL",1)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("NWZOKAN")Global("ZokanHostile","GLOBAL",1)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @10
  IF ~~ THEN EXIT
END

