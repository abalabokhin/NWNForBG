// Лускан Подмигни и ущипни, 2-й уровень Эрб От этого необычно одетого гнома, работающего в борделе, едва уловимо пахнет репой. Это не запах земной деревенской репы, а что-то вроде духов, в состав которых эта репа входит.

BEGIN ~NWERB~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)CheckStatGT(LastTalkedToBy,9,CHR)CheckStatLT(LastTalkedToBy,15,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @10 GOTO 9
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @10 GOTO 17
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @14 GOTO 11
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @14 GOTO 18
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @15
  IF ~  GlobalGT("NWErbQuest","GLOBAL",0)~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @10 GOTO 9
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @10 GOTO 17
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY @18
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @10 GOTO 9
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @10 GOTO 17
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @10 GOTO 9
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @10 GOTO 17
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 0.2
  SAY @21
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN GOTO 15
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY @22
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 0.2
  SAY @23
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 0.3
  SAY @24
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 0.4
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 21
  IF ~~ THEN REPLY @29 GOTO 4
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @30 GOTO 27
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @31 GOTO 28
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 0.2
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @10 GOTO 9
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @10 GOTO 17
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 0.2
  SAY @36
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @10 GOTO 9
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @10 GOTO 17
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 0.2
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 24
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @10 GOTO 9
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @10 GOTO 17
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 0.4
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 4
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 0.3
  SAY @41
  IF ~  PartyHasItem("Nwmisc61")~ THEN REPLY @42 GOTO 25
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @43 GOTO 26
  IF ~~ THEN REPLY @28 GOTO 21
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @30 GOTO 27
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @31 GOTO 28
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 19 // from: 0.4
  SAY @44
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 20 // from: 0.4
  SAY @45
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 21
  IF ~~ THEN REPLY @29 GOTO 4
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @30 GOTO 27
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @31 GOTO 28
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 0.3
  SAY @46
  IF ~  PartyHasItem("Nwmisc61")~ THEN REPLY @42 GOTO 25
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @47 GOTO 20
  IF ~~ THEN REPLY @43 GOTO 26
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @30 GOTO 27
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @31 GOTO 28
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY @48
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @10 GOTO 9
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @10 GOTO 17
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 0.2
  SAY @49
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  GlobalGT("NWErbQuest","GLOBAL",1)~ THEN REPLY @10 GOTO 9
  IF ~  GlobalLT("NWErbQuest","GLOBAL",2)~ THEN REPLY @10 GOTO 17
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 0.2
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 4
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 25 // from: 0.3
  SAY @50
  IF ~  GlobalGT("NWErbQuest","GLOBAL",0)CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @51 GOTO 30
  IF ~  GlobalGT("NWErbQuest","GLOBAL",0)CheckStatGT(LastTalkedToBy,7,CHR)CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @51 GOTO 31
  IF ~  GlobalGT("NWErbQuest","GLOBAL",0)CheckStatLT(LastTalkedToBy,8,CHR)~ THEN REPLY @51 GOTO 32
  IF ~  Global("NWErbQuest","GLOBAL",0)CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @52 GOTO 30
  IF ~  Global("NWErbQuest","GLOBAL",0)CheckStatGT(LastTalkedToBy,7,CHR)CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @52 GOTO 31
  IF ~  Global("NWErbQuest","GLOBAL",0)CheckStatLT(LastTalkedToBy,8,CHR)~ THEN REPLY @52 GOTO 32
END

IF ~~ THEN BEGIN 26 // from: 0.3
  SAY @53
  IF ~  PartyHasItem("Nwmisc61")~ THEN REPLY @42 GOTO 25
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 21
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @30 GOTO 27
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @31 GOTO 28
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 0.3
  SAY @54
  IF ~~ THEN DO ~SetGlobal("NWErbQuest","GLOBAL",2)~ UNSOLVED_JOURNAL @100883 EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.3
  SAY @56
  IF ~~ THEN DO ~SetGlobal("NWErbQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY @57
  IF ~  PartyHasItem("Nwmisc61")~ THEN REPLY @42 GOTO 25
  IF ~~ THEN REPLY @43 GOTO 26
  IF ~~ THEN REPLY @28 GOTO 21
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @30 GOTO 27
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @31 GOTO 28
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 0.3
  SAY @58
  IF ~  Race(LastTalkedToBy,GNOME)~ THEN REPLY @59 GOTO 33
  IF ~  CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @60 GOTO 34
  IF ~  CheckStatLT(LastTalkedToBy,17,INT)~ THEN REPLY @60 GOTO 35
  IF ~~ THEN REPLY @61 GOTO 36
  IF ~~ THEN REPLY @62 GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 0.3
  SAY @63
  IF ~  Race(LastTalkedToBy,GNOME)~ THEN REPLY @59 GOTO 38
  IF ~  CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @60 GOTO 39
  IF ~  CheckStatLT(LastTalkedToBy,17,INT)~ THEN REPLY @60 GOTO 40
  IF ~~ THEN REPLY @61 GOTO 41
  IF ~~ THEN REPLY @62 GOTO 42
END

IF ~~ THEN BEGIN 32 // from: 0.3
  SAY @64
  IF ~  Race(LastTalkedToBy,GNOME)~ THEN REPLY @59 GOTO 43
  IF ~  CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @60 GOTO 44
  IF ~  CheckStatLT(LastTalkedToBy,17,INT)~ THEN REPLY @60 GOTO 45
  IF ~~ THEN REPLY @61 GOTO 46
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 33 // from: 0.3
  SAY @65
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(750)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.3
  SAY @67
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(750)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 35 // from: 0.3
  SAY @68
  IF ~  Race(LastTalkedToBy,GNOME)~ THEN REPLY @59 GOTO 33
  IF ~~ THEN REPLY @61 GOTO 36
  IF ~~ THEN REPLY @62 GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 0.3
  SAY @69
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(750)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 37 // from: 0.3
  SAY @70
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(650)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 38 // from: 0.3
  SAY @65
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(600)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 39 // from: 0.3
  SAY @67
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(600)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 40 // from: 0.3
  SAY @63
  IF ~  Race(LastTalkedToBy,GNOME)~ THEN REPLY @59 GOTO 38
  IF ~~ THEN REPLY @61 GOTO 41
  IF ~~ THEN REPLY @62 GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 0.3
  SAY @69
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(600)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 42 // from: 0.3
  SAY @70
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(500)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 43 // from: 0.3
  SAY @65
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(450)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 44 // from: 0.3
  SAY @67
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(450)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 45 // from: 0.3
  SAY @68
  IF ~  Race(LastTalkedToBy,GNOME)~ THEN REPLY @59 GOTO 43
  IF ~~ THEN REPLY @61 GOTO 46
  IF ~~ THEN REPLY @62 GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 0.3
  SAY @69
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(450)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

IF ~~ THEN BEGIN 47 // from: 0.3
  SAY @70
  IF ~~ THEN DO ~TakePartyItem("Nwmisc61")GiveGoldForce(350)AddexperienceParty(30000)SetGlobal("NWErbQuest","GLOBAL",3)EraseJournalEntry(@100883)EscapeArea()~ SOLVED_JOURNAL @100942 EXIT
END

// -----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)CheckStatGT(LastTalkedToBy,14,CHR)~ THEN BEGIN 48 // from:
  SAY @71
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// -----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)CheckStatLT(LastTalkedToBy,10,CHR)~ THEN BEGIN 49 // from:
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 50
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 50 // from: 0.3
  SAY @74
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// -----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 51 // from:
  SAY @75
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// -----------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Gender(LastTalkedToBy,MALE)GlobalLT("NWErbQuest","GLOBAL",2)~ THEN BEGIN 52 // from:
  SAY @76
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @77 GOTO 18
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

// -----------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)GlobalLT("NWErbQuest","GLOBAL",2)~ THEN BEGIN 52 // from:
  SAY @78
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @77 GOTO 18
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

// -----------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWErbQuest","GLOBAL",2)~ THEN BEGIN 52 // from:
  SAY @79
  IF ~  PartyHasItem("Nwmisc61")~ THEN REPLY @42 GOTO 25
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~  Global("NWErbQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 13
END

// -----------------------------------------

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWErbQuest","GLOBAL",3)~ THEN BEGIN 52 // from:
  SAY @80
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

