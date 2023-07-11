// Лускан, Тесак, Элинвид Похоже, этот эльф чем-то расстроен. Впрочем, в этом городе это совсем не удивительно.

BEGIN ~ELYNWYD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)Global("ElynwydQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @13
  IF ~  Dead("Evaine")~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Class(LastTalkedToBy(Myself),FIGHTER_ALL)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @18 GOTO 12
  IF ~  !Class(LastTalkedToBy(Myself),FIGHTER_ALL)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @18 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @22
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY @23
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @24
  IF ~~ THEN DO ~EscapeAreaObject("To2E00")~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY @25
  IF ~  Dead("Evaine")~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Class(LastTalkedToBy(Myself),FIGHTER_ALL)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @18 GOTO 12
  IF ~  !Class(LastTalkedToBy(Myself),FIGHTER_ALL)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @18 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY @26
  IF ~  Dead("Evaine")~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 16
  IF ~  Class(LastTalkedToBy(Myself),FIGHTER_ALL)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @18 GOTO 12
  IF ~  !Class(LastTalkedToBy(Myself),FIGHTER_ALL)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @18 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.4
  SAY @27
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 13 // from: from: 10.5
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 18
  IF ~~ THEN REPLY @30 GOTO 19
END

IF ~~ THEN BEGIN 14 // from: from: 10.6
  SAY @31
  IF ~~ THEN REPLY @29 GOTO 18
  IF ~~ THEN REPLY @30 GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 10.7
  SAY @32
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY @33
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY @34
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",1)GiveItemCreate("NWMISC58",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @35 EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY @36
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 19 // from: from: 13.2
  SAY @37
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY @38
  IF ~  Dead("Evaine")~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Class(LastTalkedToBy(Myself),FIGHTER_ALL)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @18 GOTO 12
  IF ~  !Class(LastTalkedToBy(Myself),FIGHTER_ALL)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @18 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
END

// -----------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~    Global("QuestBroken","LOCALS",0)Global("ElynwydQuest","GLOBAL",1)Global("QuestTalked","LOCALS",0)~ THEN BEGIN 21 // from:
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 22
  IF ~ Global("Elynwyd","GLOBAL",1)~ THEN REPLY @41 GOTO 23
  IF ~  Global("Elynwyd","GLOBAL",2)Global("FindEvaine","GLOBAL",0)~ THEN REPLY @42 GOTO 24
  IF ~  Global("FindEvaine","GLOBAL",1)~ THEN REPLY @43 GOTO 25
  IF ~  Dead("Evaine")~ THEN REPLY @44 GOTO 26
  IF ~~ THEN REPLY @45 GOTO 27
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @46
  IF ~~ THEN DO ~SetGlobal("QuestTalked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.2
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 28
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 29
  IF ~~ THEN REPLY @51 GOTO 30
  IF ~~ THEN REPLY @52 GOTO 31
END

IF ~~ THEN BEGIN 24 // from: 22.3
  SAY @53
  IF ~~ THEN DO ~SetGlobal("QuestTalked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.4
  SAY @54
  IF ~~ THEN DO ~SetGlobal("QuestTalked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.5
  SAY @55
  IF ~  Dead("Kurt")~ THEN REPLY @56 GOTO 32
  IF ~  Dead("Kurt")~ THEN REPLY @57 GOTO 33
  IF ~  !Dead("Kurt")~ THEN REPLY @58 GOTO 34
  IF ~  !Dead("Kurt")~ THEN REPLY @59 GOTO 35
  IF ~~ THEN REPLY @60 GOTO 36
  IF ~~ THEN REPLY @61 GOTO 37
END

IF ~~ THEN BEGIN 27 // from: 22.6
  SAY @62
  IF ~  !PartyHasItem("NWMISC58")~ THEN REPLY @63  DO ~SetGlobal("QuestTalked","LOCALS",1)~ EXIT
  IF ~  PartyHasItem("NWMISC58")~ THEN REPLY @64  DO ~SetGlobal("QuestTalked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1
  SAY @65
  IF ~~ THEN DO ~SetGlobal("QuestTalked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.2
  SAY @66
  IF ~~ THEN DO ~SetGlobal("QuestTalked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.4
  SAY @67
  IF ~~ THEN DO ~SetGlobal("QuestTalked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.5
  SAY @68
  IF ~~ THEN DO ~SetGlobal("QuestTalked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.1
  SAY @69
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)~ SOLVED_JOURNAL @70 EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.2
  SAY @71
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)~ SOLVED_JOURNAL @70 EXIT
END

IF ~~ THEN BEGIN 34 // from: 26.3
  SAY @72
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)~ SOLVED_JOURNAL @70 EXIT
END

IF ~~ THEN BEGIN 35 // from: 26.4
  SAY @73
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)~ SOLVED_JOURNAL @70 EXIT
END

IF ~~ THEN BEGIN 36 // from: 26.5
  SAY @74
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)~ SOLVED_JOURNAL @70 EXIT
END

IF ~~ THEN BEGIN 37 // from: 26.6
  SAY @75
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)IncrementGlobal("EvilNW1","GLOBAL",1)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)~ SOLVED_JOURNAL @70 EXIT
END

// -----------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~    Global("QuestBroken","LOCALS",0)Global("ElynwydQuest","GLOBAL",1)Global("QuestTalked","LOCALS",1)~ THEN BEGIN 38 // from:
  SAY @76
  IF ~~ THEN REPLY @40 GOTO 22
  IF ~ Global("Elynwyd","GLOBAL",1)~ THEN REPLY @41 GOTO 23
  IF ~  Global("Elynwyd","GLOBAL",2)Global("FindEvaine","GLOBAL",0)~ THEN REPLY @42 GOTO 24
  IF ~  Global("FindEvaine","GLOBAL",1)~ THEN REPLY @43 GOTO 25
  IF ~  Dead("Evaine")~ THEN REPLY @44 GOTO 26
  IF ~~ THEN REPLY @45 GOTO 27
END

// -----------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("ElynwydQuest","GLOBAL",2)!Dead("Evaine")~ THEN BEGIN 39 // from:
  SAY @77
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @78
  IF ~  CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @79 GOTO 41
  IF ~  CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY @79 GOTO 42
  IF ~  Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @80 GOTO 43
  IF ~  !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @80 GOTO 44
  IF ~~ THEN REPLY @81 GOTO 45
  IF ~  !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @82 GOTO 46
  IF ~  Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @82 GOTO 47
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY @83
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",3)GiveGoldForce(875)AddexperienceParty(70000)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)EraseJournalEntry(@92)ActionOverride("Evaine",EscapeAreaObject("To2E00"))EscapeAreaObject("To2E00")~ SOLVED_JOURNAL @84 EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.2
  SAY @85
  IF ~~ THEN REPLY @80 GOTO 43
  IF ~~ THEN REPLY @81 GOTO 44
  IF ~~ THEN REPLY @82 GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 40.3
  SAY @86
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",3)GiveGoldForce(875)AddexperienceParty(70000)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)EraseJournalEntry(@92)ActionOverride("Evaine",EscapeAreaObject("To2E00"))EscapeAreaObject("To2E00")~ SOLVED_JOURNAL @84 EXIT
END

IF ~~ THEN BEGIN 44 // from: 40.4
  SAY @86
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",3)GiveGoldForce(875)AddexperienceParty(50000)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)EraseJournalEntry(@92)ActionOverride("Evaine",EscapeAreaObject("To2E00"))EscapeAreaObject("To2E00")~ SOLVED_JOURNAL @84 EXIT
END

IF ~~ THEN BEGIN 45 // from: 40.5
  SAY @87
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",3)GiveGoldForce(800)AddexperienceParty(70000)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)EraseJournalEntry(@92)ActionOverride("Evaine",EscapeAreaObject("To2E00"))EscapeAreaObject("To2E00")~ SOLVED_JOURNAL @84 EXIT
END

IF ~~ THEN BEGIN 46 // from: 40.6
  SAY @88
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",3)AddexperienceParty(80000)
EraseJournalEntry(@90)
EraseJournalEntry(@91)
EraseJournalEntry(@35)
EraseJournalEntry(@91)
ReputationInc(1)ActionOverride("Evaine",EscapeAreaObject("To2E00"))EscapeAreaObject("To2E00")~ SOLVED_JOURNAL @84 EXIT
END

IF ~~ THEN BEGIN 47 // from: 40.7
  SAY @88
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",3)AddexperienceParty(70000)ReputationInc(1)EraseJournalEntry(@90)EraseJournalEntry(@91)EraseJournalEntry(@35)EraseJournalEntry(@92)ActionOverride("Evaine",EscapeAreaObject("To2E00"))EscapeAreaObject("To2E00")~ SOLVED_JOURNAL @84 EXIT
END

// -----------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("QuestBroken","LOCALS",0)~ THEN BEGIN 48// from:
  SAY @89
  IF ~~ THEN DO ~EscapeAreaObject("To2E00")~ EXIT
END

