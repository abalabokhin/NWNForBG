// Сумрачный лес, 

BEGIN ~NWRUNE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  !PartyHasItem("NWBOOK35")~ THEN GOTO 1
  IF ~  PartyHasItem("NWBOOK35")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.4
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @20
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy(Myself),WIZARD_GREATER_MALISON)PlaySound("EFF_M02")SetGlobal("UndeadSpawn","NW2510",1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @21
  IF ~~ THEN DO ~SetGlobal("NWPortal2510","GLOBAL",1)PlaySound("EFF_M02")DestroySelf()~ EXIT
END

