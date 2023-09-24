// Холодный лес, Ваат Орк Этот бандит-орк огромный и свирепый, какими они обычно и бывают. -  Голова Ваата 1340 зол 
// Моя сдавайся! Моя сдавайся!

BEGIN ~NWVAATH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~SetGlobal("VaatHostile","MYAREA",1)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",1)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @14
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY @15
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("VaatHostile","MYAREA",1)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @16
  IF ~~ THEN DO ~GivePartyGold("500")EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 3.2 с головой и с золотом
  SAY @20
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @21 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @16
  IF ~~ THEN DO ~GiveItemCreate("NWVAATH2",LastTalkedToBy,0,0,0)EscapeAreaDestroy(60)~ EXIT
END

