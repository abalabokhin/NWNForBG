// Елгар - полуорк-друид стоит в лагере

BEGIN ~NWELGAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("SpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.2 6.2
  SAY @19
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @20 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 5.1 6.1
  SAY @21
  IF ~~ THEN REPLY @20 GOTO 7
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY @22
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AavillQuest","GLOBAL",0)Global("SpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN BEGIN 11 // from:
  SAY @23
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)~ THEN BEGIN 12 // from:
  SAY @24
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("NWSPIRIO")~ THEN BEGIN 13 // from:
  SAY @25
  IF ~~ THEN EXIT
END
