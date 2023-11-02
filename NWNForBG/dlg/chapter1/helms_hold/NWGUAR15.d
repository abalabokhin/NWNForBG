// Крепость Хельма    Дух-хранитель Хельма

BEGIN ~NWGUAR15~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Alignment(Player1,MASK_EVIL)~ THEN GOTO 1
  IF ~  Alignment(Player1,MASK_GOOD)~ THEN GOTO 2
  IF ~  Alignment(Player1,MASK_GENEUTRAL)~ THEN GOTO 3
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
END

IF ~~ THEN BEGIN 2 // 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @9
  IF ~~ THEN DO ~SetGlobal("NWKaohionQuest","GLOBAL",8)GiveItemCreate("NWRING2",LastTalkedToBy,1,1,1)AddexperienceParty(42000)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("NWKaohionQuest","GLOBAL",8)GiveItemCreate("NWBOW1",LastTalkedToBy,1,1,1)AddexperienceParty(42000)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @9
  IF ~~ THEN DO ~SetGlobal("NWKaohionQuest","GLOBAL",8)ForceSpellRes("NWSPKAO2",LastTalkedToBy(Myself))AddexperienceParty(42000)~ EXIT
END

IF ~~ THEN BEGIN 7 // 1.4
  SAY @10
  IF ~~ THEN DO ~SetGlobal("NWKaohionQuest","GLOBAL",8)AddexperienceParty(42000)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @16
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @18
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 8.3
  SAY @19
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 8.4
  SAY @20
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY @21
  IF ~~ THEN DO ~SetGlobal("NWKaohionQuest","GLOBAL",8)GiveItemCreate("NWBOOK46",LastTalkedToBy,1,1,1)AddexperienceParty(84000)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY @22
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 11.1
  SAY @23
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 13
END

