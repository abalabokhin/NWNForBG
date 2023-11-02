// Зеленый Грифон Пещера Каратис - оборотень

BEGIN ~NWKARATS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Dialogue","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @3 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @3 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN DO ~DestroyItem("MINHP1")ApplySpell(Myself,RESTORE_FULL_HEALTH)Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @3 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @17
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @3 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @18
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @21
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @3 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @24
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @3 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 4
END

//IF ~~ THEN BEGIN 13 // from: 7 8 9
//  SAY @25
//  IF ~~ THEN GOTO 14
//END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)~ THEN BEGIN 13 // from:
  SAY @25
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13
  SAY @26
  IF ~~ THEN DO ~SetGlobal("NWNeurikQuest","GLOBAL",6)
SetGlobal("Dialogue","LOCALS",2)
SetGlobal("SPRITE_IS_DEADNWKARATS","GLOBAL",0)
GiveItem("NWJKARAI",LastTalkedToBy(Myself))
EraseJournalEntry(@96025)~ UNSOLVED_JOURNAL @96864 EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNeurikQuest","GLOBAL",4)Global("Pause","LOCALS",1)~ THEN BEGIN 15 // from:
  SAY @28
  IF ~~ THEN REPLY @29 DO ~SetGlobal("Pause","LOCALS",0)~  GOTO 2
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @3 DO ~SetGlobal("Pause","LOCALS",0)~  GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 4
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNeurikQuest","GLOBAL",4)~ THEN BEGIN 16 // from:
  SAY @25
  IF ~~ THEN EXIT
END
