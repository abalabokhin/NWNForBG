// Лес Невервинтер, дом Сетары - Сетара, человек женщина Это древнее создание почти непереносимо уродливо.

BEGIN ~NWSETARA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  GlobalGT("AelaithQuest","GLOBAL",0)Global("Gem","LOCALS",0)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2
  SAY @14
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @18
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @26
  IF ~~ THEN DO ~ForceSpell(Myself,WIZARD_STONE_SKIN)SetGlobal("Hostile","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 6.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 9.2 11.3
  SAY @31
  IF ~~ THEN DO ~ForceSpell(Myself,WIZARD_STONE_SKIN)SetGlobal("Hostile","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7 1
  SAY @32
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY @33
  IF ~ Global("SetaraQuest","GLOBAL",1)PartyHasItem("NWSEMIRR")~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 7.2
  SAY @37
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 11.1
  SAY @40
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY @41
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @42
  IF ~~ THEN DO ~SetGlobal("SetaraQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @99934 EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @44
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @45
  IF ~ PartyHasItem("NWSEMIRR")~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 14.3 15.3 17.3
  SAY @46
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 20.1
  SAY @47
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @25 GOTO 12

END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @44
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 13
  IF ~~ THEN REPLY @50 GOTO 26
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @51 GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 17.1 22.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.2
  SAY @54
  IF ~~ THEN REPLY @49 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @51 GOTO 8
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY @55
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 29
  IF ~~ THEN REPLY @58 GOTO 30
  IF ~~ THEN REPLY @59 GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @60
  IF ~~ THEN DO ~SetGlobal("Gem","LOCALS",1)TakePartyItem("NWSEMIRR")
SetGlobal("SetaraQuest","GLOBAL",2)GiveItem("NWSGEM",LastTalkedToBy)GiveItem("NWSETKEY",LastTalkedToBy)AddexperienceParty(20000)EraseJournalEntry(@99934)~ SOLVED_JOURNAL @99994 EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY @62
  IF ~~ THEN DO ~SetGlobal("Gem","LOCALS",1)TakePartyItem("NWSEMIRR")
SetGlobal("SetaraQuest","GLOBAL",2)GiveItem("NWSGEM",LastTalkedToBy)GiveItem("NWSETKEY",LastTalkedToBy)AddexperienceParty(20000)EraseJournalEntry(@99934)~ SOLVED_JOURNAL @99994 EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.3
  SAY @63
  IF ~~ THEN REPLY @57 GOTO 29
  IF ~~ THEN REPLY @58 GOTO 30
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("SetaraQuest","GLOBAL",0)RandomNum(2,1)~ THEN BEGIN 32 // from:
  SAY @64
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  GlobalGT("AelaithQuest","GLOBAL",0)Global("Gem","LOCALS",0)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @65 GOTO 8
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("SetaraQuest","GLOBAL",0)RandomNum(2,2)~ THEN BEGIN 37 // from:
  SAY @66
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  GlobalGT("AelaithQuest","GLOBAL",0)Global("Gem","LOCALS",0)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @65 GOTO 8
END

// --------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("SetaraQuest","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 34
  IF ~ PartyHasItem("NWSEMIRR")~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @69 GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @70
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.3
  SAY @71
  IF ~~ THEN EXIT
END

// --------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("SetaraQuest","GLOBAL",1)~ THEN BEGIN 36 // from:
  SAY @72
  IF ~~ THEN EXIT
END
