// Гнездо нищих Дом Простолюдин   Обычный житель Невервинтера, одетый в простую одежду. На его лице написан страх, как и у всех, кто живет в тени чумы.  BEGIN 10
BEGIN ~NWCOMMO1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)~ THEN REPLY @5 GOTO 4
  IF ~  Global("NWBeggarsNestDone","GLOBAL",0)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @17
  IF ~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)~ THEN GOTO 8
  IF ~  Global("NWBeggarsNestDone","GLOBAL",0)~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @18
  IF ~~ THEN REPLY @14 GOTO 3
  IF ~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)~ THEN REPLY @19 GOTO 4
  IF ~  Global("NWBeggarsNestDone","GLOBAL",0)~ THEN REPLY @19 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @20
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @21
  IF ~  GlobalGT("NWKnowBandit","GLOBAL",0)~ THEN REPLY @22 GOTO 10
  IF ~  Global("NWKnowBandit","GLOBAL",0)~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @23
  IF ~~ THEN REPLY @14 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @24
  IF ~~ THEN REPLY @25 DO ~SetGlobal("NWKnowBandit","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @27
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY @28
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 0 // from:
  SAY @29
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

