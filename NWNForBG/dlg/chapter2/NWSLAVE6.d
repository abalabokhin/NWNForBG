// Лес Невервинтер, дом нимфы - Раб, человек

BEGIN ~NWSLAVE6~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~SetGlobal("SlaveSurrenders","LOCALS",1)~ GOTO 1
END

IF~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~ ~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @4
  IF ~ ~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @5
  IF ~ ~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~ ~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 2
  IF ~~ THEN REPLY @12 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @13
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~ ~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @18
  IF ~~ THEN DO ~ForceSpellRES("NWSLAVE4",Myself)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @19
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6 1
  SAY @20
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~ ~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 6 2
  SAY @21
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~ ~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 6 3
  SAY @22
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~ ~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END
