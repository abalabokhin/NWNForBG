// Велкар - человек-друид стоит в лагере

BEGIN ~NWWELCAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("SpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @18 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @19
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY @20
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.4
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1 7.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @24 GOTO 4
  IF ~~ THEN REPLY @25 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @26
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

// ------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @27
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AavillQuest","GLOBAL",0)Global("SpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN BEGIN 12 // from:
  SAY @28
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY @29
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("NWSPIRIO")~ THEN BEGIN 13 // from:
  SAY @30
  IF ~~ THEN EXIT
END
