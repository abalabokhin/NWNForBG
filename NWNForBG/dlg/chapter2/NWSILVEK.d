// Южная дорога 2 - Серебряная спина  Свирепый волк - это более крупная и зловредная разновидность обычного волка. Часто они сопровождают опытного следопыта или друида.  NWINGO  NWERIK  NWCONSTC NWMARY  NearestEnemyOf(Myself)

BEGIN ~NWSILVEK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @17
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 5
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @20
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @21
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.1
  SAY @22
  IF ~  OR(2)CheckStatGT(LastTalkedToBy(Myself),16,STR)CheckStatGT(LastTalkedToBy(Myself),16,DEX)~ THEN REPLY @23 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy(Myself),17,STR)CheckStatLT(LastTalkedToBy(Myself),17,DEX)~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @26
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @27
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("SPRITE_IS_DEADNWSILVEK","GLOBAL",0)
SetGlobal("SilverbackTalk","GLOBAL",1)
AddexperienceParty(18000)
ApplySpell(Myself,RESTORE_FULL_HEALTH)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY @28
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @29 EXIT
END
