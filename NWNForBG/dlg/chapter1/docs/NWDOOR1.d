// Доки Дверь в Таверну Сиди

BEGIN ~NWDOOR1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TalkedTo","NW1100",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  !HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN GOTO 1
  IF ~  HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN DO ~Unlock("Door1")OpenDoor("Door1")TriggerActivation("Tavsidi",FALSE)SetGlobal("TalkedTo","NW1100",1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 1.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @9
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  NumItemsPartyGT("Nwmisc29",0)NumItemsPartyLT("Nwmisc29",5)~ THEN REPLY @14 GOTO 10
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @16
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)SetGlobal("UsedDoor1","NW1100",0)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @17
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)SetGlobal("UsedDoor1","NW1100",0)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @18
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @19
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)SetGlobal("UsedDoor1","NW1100",0)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY @20
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)SetGlobal("UsedDoor1","NW1100",0)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY @21
  IF ~~ THEN DO ~TakePartyItemNum("Nwmisc29",5)Unlock("Door1")OpenDoor("Door1")TriggerActivation("Tavsidi",FALSE)SetGlobal("TalkedTo","NW1100",1)DestroySelf()~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("TalkedTo","NW1100",0)~ THEN BEGIN 12 // from:
  SAY @22
  IF ~  !HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN GOTO 1
  IF ~  HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN GOTO 2
END

