// Джанкен - человек-друид стоит в лагере

BEGIN ~NWJANKEN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("SpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @16
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @17
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 5
  IF ~~ THEN REPLY @21 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @22
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 9.1
  SAY @23
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @24
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @25
  IF ~~ THEN GOTO 9
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY @26
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @14 GOTO 4
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AavillQuest","GLOBAL",0)Global("SpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN BEGIN 13 // from:
  SAY @27
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)~ THEN BEGIN 14 // from:
  SAY @28
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("NWSPIRIO")~ THEN BEGIN 15 // from:
  SAY @29
  IF ~~ THEN EXIT
END
