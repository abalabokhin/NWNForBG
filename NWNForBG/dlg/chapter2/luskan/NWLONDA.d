// Лускан  Тесак Лонда   Эта благородная женщина явно видела и лучшие времена. Ее одежда износилась, а сама она выглядит донельзя угнетенной.

// Global("NWLondaQuest","GLOBAL,2) - гг знает что дети мертвы

// Global("NWBaramQuest","GLOBAL,1) - состоялся разговор с Барамом

// GlobalGT("NWBaramQuest","GLOBAL,1) - выполнено задание Барама

BEGIN ~NWLONDA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("MyQuest","LOCALS",0)Global("NWLondaQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @11 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @16
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY @18
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @27
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 8.3
  SAY @28
  IF ~~ THEN DO ~SetGlobal("MyQuest","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.4
  SAY @29
  IF ~~ THEN DO ~SetGlobal("MyQuest","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 16
  IF ~~ THEN REPLY @34 GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY @35
  IF ~~ THEN DO ~SetGlobal("MyQuest","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @36
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 16
  IF ~~ THEN REPLY @34 GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 18
  IF ~~ THEN REPLY @39 GOTO 19
  IF ~~ THEN REPLY @40 GOTO 20
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 13.4
  SAY @43
  IF ~~ THEN DO ~SetGlobal("MyQuest","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @44
  IF ~~ THEN REPLY @39 GOTO 19
  IF ~~ THEN REPLY @40 GOTO 20
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY @45
  IF ~~ THEN REPLY @38 GOTO 18
  IF ~~ THEN REPLY @40 GOTO 20
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 16.3
  SAY @46
  IF ~~ THEN REPLY @38 GOTO 18
  IF ~~ THEN REPLY @39 GOTO 19
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 16.4
  SAY @47
  IF ~~ THEN REPLY @38 GOTO 18
  IF ~~ THEN REPLY @39 GOTO 19
  IF ~~ THEN REPLY @40 GOTO 20
  IF ~~ THEN REPLY @42 GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 16.5
  SAY @48
  IF ~~ THEN DO ~SetGlobal("MyQuest","LOCALS",1)SetGlobal("NWLondaQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @101378 EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("MyQuest","LOCALS",1)Global("NWLondaQuest","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY @50
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 12
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("NWLondaQuest","GLOBAL",1)Global("NWLondaQuest","GLOBAL",2)Global("MyQuest","LOCALS",1)~ THEN BEGIN 24 // from:
  SAY @51
  IF ~  Global("NWLONDA","GLOBAL",1)GlobalLT("NWBaramQuest","GLOBAL",2)~ THEN REPLY @52 GOTO 25
  IF ~  GlobalGT("NWBaramQuest","GLOBAL",1)Global("NWLondaQuest","GLOBAL",1)~ THEN REPLY @53 GOTO 26
  IF ~  Global("NWLondaQuest","GLOBAL",2)~ THEN REPLY @54 GOTO 27
  IF ~  Global("NWLondaQuest","GLOBAL",2)~ THEN REPLY @55 GOTO 28
  IF ~  Global("NWLondaQuest","GLOBAL",2)~ THEN REPLY @56 GOTO 29
  IF ~~ THEN REPLY @57 GOTO 30
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @58
  IF ~  GlobalGT("NWKnowBaram","GLOBAL",0)~ THEN REPLY @59 GOTO 31
  IF ~  GlobalGT("NWKnowBaram","GLOBAL",0)~ THEN REPLY @60 GOTO 32
  IF ~~ THEN REPLY @61 GOTO 33
END

IF ~~ THEN BEGIN 26 // from: 24.2
  SAY @62
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 34
  IF ~~ THEN REPLY @65 GOTO 28
  IF ~~ THEN REPLY @66 GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 24.4
  SAY @67
  IF ~  PartyHasItem("NWMISC59")~ THEN GOTO 35
  IF ~  !PartyHasItem("NWMISC59")~ THEN GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 24.5
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 28
  IF ~~ THEN REPLY @70 GOTO 28
  IF ~~ THEN REPLY @71 GOTO 28
END

IF ~~ THEN BEGIN 30 // from: 24.6
  SAY @72
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.1
  SAY @73
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.2
  SAY @74
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.3
  SAY @75
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.1
  SAY @76
  IF ~  PartyHasItem("NWMISC59")~ THEN GOTO 35
  IF ~  !PartyHasItem("NWMISC59")~ THEN GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 28.1
  SAY @77
  IF ~~ THEN DO ~EraseJournalEntry(@101378)EraseJournalEntry(@101379)EraseJournalEntry(@101380)EraseJournalEntry(@101381)AddexperienceParty(60000)SetGlobal("NWLondaQuest","GLOBAL",3)TakePartyItem("NWMISC59")GiveItemCreate("Nwkey09",LastTalkedToBy,0,0,0)EscapeAreaObject("To2E05")~ SOLVED_JOURNAL @101448 EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.2
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 37
  IF ~~ THEN REPLY @81 GOTO 38
  IF ~~ THEN REPLY @82 GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @83
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY @84
  IF ~~ THEN DO ~EraseJournalEntry(@101378)EraseJournalEntry(@101379)EraseJournalEntry(@101380)EraseJournalEntry(@101381)AddexperienceParty(30000)SetGlobal("NWLondaQuest","GLOBAL",3)EscapeAreaObject("To2E05")~ SOLVED_JOURNAL @101448 EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY @85
  IF ~~ THEN REPLY @80 GOTO 37
  IF ~~ THEN REPLY @81 GOTO 38
  IF ~~ THEN REPLY @86 GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.3
  SAY @87
  IF ~~ THEN DO ~EraseJournalEntry(@101378)EraseJournalEntry(@101379)EraseJournalEntry(@101380)EraseJournalEntry(@101381)SetGlobal("NWLondaQuest","GLOBAL",3)ReputationInc(-1)GiveItemCreate("Nwkey09",LastTalkedToBy,0,0,0)EscapeAreaObject("To2E05")~ SOLVED_JOURNAL @101448 EXIT
END

// ----------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWLondaQuest","GLOBAL",2)Global("MyQuest","LOCALS",0)~ THEN BEGIN 41 // from:
  SAY @88
  IF ~~ THEN REPLY @54 GOTO 27
  IF ~~ THEN REPLY @55 GOTO 28
  IF ~~ THEN REPLY @56 GOTO 29
END

