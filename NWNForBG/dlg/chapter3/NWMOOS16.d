// Форт-Илкард: усадьбы, Воин племени Лося. Этот стражник подозрительно смотрит на вас.

BEGIN ~NWMOOS16~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)!Dead("NWZOKAN")~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN DO ~SetGlobal("ToZokan", "LOCALS",1)~ EXIT
END

// ------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!Dead("NWZOKAN")GlobalLT("NW_Medicine","GLOBAL",2)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~  Global("ToZokan", "LOCALS",0)~ THEN REPLY @3 GOTO 3
  IF ~  GlobalGT("ToZokan", "LOCALS",0)~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @5
  IF ~~ THEN DO ~SetGlobal("ToZokan", "LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("ZokanHostile","GLOBAL",1)Enemy()~ EXIT
END

