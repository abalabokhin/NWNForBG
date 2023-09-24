// Колодец Беорунна: Казармы наемников Ролкид, Дварф есть задание, торговец.

BEGIN ~NWROLKID~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~  Global("RolkidQuest","GLOBAL",0)~ THEN GOTO 7
  IF ~  Global("RolkidQuest","GLOBAL",1)~ THEN GOTO 24
  IF ~  Global("RolkidQuest","GLOBAL",2)~ THEN GOTO 8
  IF ~  Global("RolkidQuest","GLOBAL",4)~ THEN GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN DO ~StartStore("NWROLKID",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @11
  IF ~  Global("RolkidQuest","GLOBAL",0)~ THEN GOTO 7
  IF ~  Global("RolkidQuest","GLOBAL",1)~ THEN GOTO 24
  IF ~  Global("RolkidQuest","GLOBAL",2)~ THEN GOTO 8
  IF ~  Global("RolkidQuest","GLOBAL",4)~ THEN GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~  OR(2)PartyHasItem("NWOBOLHD")PartyHasItem("NWOBOLH2")~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @18
  IF ~~ THEN REPLY @5 GOTO 13
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY @23
  IF ~~ THEN DO ~TakePartyItem("NWOBOLHD")TakePartyItem("NWOBOLH2")SetGlobal("RolkidQuest","GLOBAL",4)AddexperienceParty(90000)GiveGoldForce(1000)EraseJournalEntry(@105371)~ SOLVED_JOURNAL @107581 EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY @10
  IF ~~ THEN DO ~StartStore("NWROLKI2",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~  OR(2)PartyHasItem("NWGUZUHD")PartyHasItem("NWGUZUD2")OR(2)PartyHasItem("NWVAATHD")PartyHasItem("NWVAATH2")Global("RolkidQuest","GLOBAL",1)~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 11.1
  SAY @29
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @30
  IF ~~ THEN DO ~SetGlobal("RolkidQuest","GLOBAL",1)GiveItemCreate("NWLETT2",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @105372 EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY @32
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~  OR(2)PartyHasItem("NWGUZUHD")PartyHasItem("NWGUZUD2")OR(2)PartyHasItem("NWVAATHD")PartyHasItem("NWVAATH2")Global("RolkidQuest","GLOBAL",1)~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 18 // from: 14.3
  SAY @33
  IF ~~ THEN DO ~SetGlobal("RolkidQuest","GLOBAL",2)TakePartyItem("NWGUZUHD")TakePartyItem("NWGUZUD2")TakePartyItem("NWVAATHD")TakePartyItem("NWVAATH2")AddexperienceParty(90000)GiveGoldForce(1000)EraseJournalEntry(@105372)~ SOLVED_JOURNAL @105373 EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.1
  SAY @35
  IF ~~ THEN DO ~SetGlobal("RolkidQuest","GLOBAL",3)EraseJournalEntry(@105373)~ UNSOLVED_JOURNAL @105371 EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.2
  SAY @37
  IF ~  OR(2)PartyHasItem("NWGUZUHD")PartyHasItem("NWGUZUD2")OR(2)PartyHasItem("NWVAATHD")PartyHasItem("NWVAATH2")Global("RolkidQuest","GLOBAL",1)~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

// --------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("RolkidQuest","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY @38
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

// --------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolkidQuest","GLOBAL",0)GlobalLT("RolkidQuest","GLOBAL",4)~ THEN BEGIN 21 // from:
  SAY @39
  IF ~  OR(2)PartyHasItem("NWOBOLHD")PartyHasItem("NWOBOLH2")Global("RolkidQuest","GLOBAL",3)~ THEN REPLY @17 GOTO 12
  IF ~  OR(2)PartyHasItem("NWGUZUHD")PartyHasItem("NWGUZUD2")OR(2)PartyHasItem("NWVAATHD")PartyHasItem("NWVAATH2")Global("RolkidQuest","GLOBAL",1)~ THEN REPLY @28 GOTO 18
  IF ~  !Global("RolkidQuest","GLOBAL",3)~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

// --------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolkidQuest","GLOBAL",3)~ THEN BEGIN 22 // from:
  SAY @40
  IF ~~ THEN REPLY @5 GOTO 23
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @10
  IF ~~ THEN DO ~StartStore("NWROLKI2",LastTalkedToBy)~ EXIT
END

