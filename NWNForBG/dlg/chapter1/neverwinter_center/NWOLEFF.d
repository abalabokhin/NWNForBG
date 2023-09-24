// Центр Невервинтера Апсида (Храм)  Олефф - просит собрать артефакты. Его преподобие Судья Олефф Ускар выглядит очень суровым человеком. Впрочем, страшные последние события сделали его, как и многих других чиновников в Невервинтере усталым и неуверенным.

BEGIN ~NWOLEFF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("NWOPHALT")~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY @9 GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.5
  SAY @11
  IF ~  PartyHasItem("NWOPHALT")~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("NWOPHALT")~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY @9 GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @14
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @17
  IF ~  OR(2)StateCheck(LastTalkedToBy(Myself),STATE_DISEASED)StateCheck(Player1,STATE_DISEASED)~ THEN GOTO 12
  IF ~  !StateCheck(LastTalkedToBy(Myself),STATE_DISEASED)!StateCheck(Player1,STATE_DISEASED)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @18
  IF ~  Class(Player1,CLERIC_ALL)~ THEN GOTO 14
  IF ~  Class(Player1,PALADIN)~ THEN GOTO 15
  IF ~  Class(Player1,MONK)~ THEN GOTO 16
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 18
  IF ~  PartyHasItem("NWOPHALT")~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY @21
  IF ~~ THEN DO ~StartStore("NWOLEFF",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @22
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @23
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @24
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 23
  IF ~~ THEN REPLY @4 DO ~TakePartyItem("NWOPHALT")DestroyItem("NWOPHALT")GiveItemCreate("NWOLEFFT",LastTalkedToBy,1,0,0)~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY @27
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 15 // from: 7.2
  SAY @28
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 16 // from: 7.3
  SAY @29
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 7.4
  SAY @30
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,WIS)~ THEN REPLY @31 GOTO 27
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,WIS)~ THEN REPLY @31 GOTO 28
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY @9 GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY @32
  IF ~  PartyHasItem("NWOPHALT")~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY @33
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 21
  IF ~~ THEN REPLY @36 GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",1)TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveItemCreate("NWOLEFF1",LastTalkedToBy,1,0,0)GiveGoldForce(1000)
AddexperienceParty(30000)~ UNSOLVED_JOURNAL @92702 EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY @39
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 23// from: 13.1
  SAY @40
  IF ~  Global("Robbed","LOCALS",0)~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @4 GOTO 25
END

IF ~~ THEN BEGIN 24// from: 23.1
  SAY @42
  IF ~~ THEN DO ~TakePartyItem("NWOPHALT")DestroyItem("NWOPHALT")GiveItemCreate("NWOLEFFT",LastTalkedToBy,1,0,0)GiveGoldForce(500)SetGlobal("Robbed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25// from: 23.2
  SAY @13
  IF ~~ THEN DO ~TakePartyItem("NWOPHALT")DestroyItem("NWOPHALT")GiveItemCreate("NWOLEFFT",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.1 15.1 16.1
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @46 GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY @47
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 28 // from: 17.2
  SAY @48
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY @9 GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY @49
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY @50
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.1
  SAY @34
  IF ~~ THEN REPLY @51 GOTO 32
  IF ~~ THEN REPLY @35 GOTO 33
  IF ~~ THEN REPLY @36 GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @52
  IF ~~ THEN REPLY @35 GOTO 33
  IF ~~ THEN REPLY @36 GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.2
  SAY @37
  IF ~~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",1)GiveItemCreate("NWOLEFF1",LastTalkedToBy,1,0,0)~ UNSOLVED_JOURNAL @92702 EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.3
  SAY @39
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 35 // from:
  SAY @53
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",3)~ THEN GOTO 36
  IF ~  Global("OleffQuestBreak","GLOBAL",3)~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",9)EraseJournalEntry(@92668)~ SOLVED_JOURNAL @92718 GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @55
  IF ~  PartyHasItem("NWOPHALT")~ THEN REPLY @7 GOTO 6
  IF ~  OR(4)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")PartyHasItem("Nwmisc18")~ THEN REPLY @56 GOTO 38
  IF ~~ THEN REPLY @57 GOTO 39
  IF ~~ THEN REPLY @58 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY @59
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY @60
  IF ~  PartyHasItem("Nwmisc15")~ THEN REPLY @61 GOTO 40
  IF ~  PartyHasItem("Nwmisc16")~ THEN REPLY @62 GOTO 41
  IF ~  PartyHasItem("Nwmisc17")~ THEN REPLY @63 GOTO 42
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY @64 GOTO 43
  IF ~~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY @65
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY @66
  IF ~  GlobalGT("OleffQuestBreak","GLOBAL",0)~ THEN GOTO 45
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 46
  IF ~  Global("OleffQuestBreak","GLOBAL",0)GlobalLT("MyArtefact","GLOBAL",2)~ THEN GOTO 47
END

IF ~~ THEN BEGIN 41 // from: 38.2
  SAY @67
  IF ~  GlobalGT("OleffQuestBreak","GLOBAL",0)~ THEN GOTO 49
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 50
  IF ~  Global("OleffQuestBreak","GLOBAL",0)GlobalLT("MyArtefact","GLOBAL",2)~ THEN GOTO 51
END

IF ~~ THEN BEGIN 42 // from: 38.3
  SAY @68
  IF ~  GlobalGT("OleffQuestBreak","GLOBAL",0)~ THEN GOTO 52
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 53
  IF ~  Global("OleffQuestBreak","GLOBAL",0)GlobalLT("MyArtefact","GLOBAL",2)~ THEN GOTO 54
END

IF ~~ THEN BEGIN 43 // from: 38.4
  SAY @69
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 39.1
  SAY @34
  IF ~  PartyHasItem("NWOPHALT")~ THEN REPLY @7 GOTO 6
  IF ~  OR(4)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")PartyHasItem("Nwmisc18")~ THEN REPLY @56 GOTO 38
  IF ~~ THEN REPLY @58 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 45 // from: 40.1
  SAY @70
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 46 // from: 40.2
  SAY @71
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")IncrementGlobal("MyArtefact","GLOBAL",1)
GiveGoldForce(1000)AddexperienceParty(60000)SetGlobal("OleffQuest","GLOBAL",2)GiveItemCreate("NWOLEFFU",LastTalkedToBy,1,1,1)EraseJournalEntry(@92668)~ SOLVED_JOURNAL @92731 EXIT
END

IF ~~ THEN BEGIN 47 // from: 40.3
  SAY @73
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(1000)AddexperienceParty(30000)IncrementGlobal("MyArtefact","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY @74
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(1000)AddexperienceParty(30000)SetGlobal("OleffQuest","GLOBAL",9)EraseJournalEntry(@92668)~ SOLVED_JOURNAL @92734 EXIT
END

IF ~~ THEN BEGIN 49 // from: 41.1
  SAY @70
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 50 // from: 41.2
  SAY @71
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")IncrementGlobal("MyArtefact","GLOBAL",1)
GiveGoldForce(1000)AddexperienceParty(60000)SetGlobal("OleffQuest","GLOBAL",2)GiveItemCreate("NWOLEFFU",LastTalkedToBy,1,1,1)EraseJournalEntry(@92668)~ SOLVED_JOURNAL @92731 EXIT
END

IF ~~ THEN BEGIN 51 // from: 41.3
  SAY @76
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(1000)AddexperienceParty(30000)IncrementGlobal("MyArtefact","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 42.1
  SAY @70
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 42.2
  SAY @71
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")IncrementGlobal("MyArtefact","GLOBAL",1)
GiveGoldForce(1000)AddexperienceParty(60000)SetGlobal("OleffQuest","GLOBAL",2)GiveItemCreate("NWOLEFFU",LastTalkedToBy,1,1,1)EraseJournalEntry(@92668)~ SOLVED_JOURNAL @92731 EXIT
END

IF ~~ THEN BEGIN 54 // from: 42.3
  SAY @73
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(1000)AddexperienceParty(30000)IncrementGlobal("MyArtefact","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 49.1
  SAY @74
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(1000)AddexperienceParty(30000)SetGlobal("OleffQuest","GLOBAL",9)EraseJournalEntry(@92668)~ SOLVED_JOURNAL @92734 EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.1
  SAY @74
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(1000)AddexperienceParty(30000)SetGlobal("OleffQuest","GLOBAL",9)EraseJournalEntry(@92668)~ SOLVED_JOURNAL @92734 EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)!IsGabber(Player1)~ THEN BEGIN 57 // from:
  SAY @77
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",3)~ THEN GOTO 36
  IF ~  Global("OleffQuestBreak","GLOBAL",3)~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",9)EraseJournalEntry(@92668)~ SOLVED_JOURNAL @92718 GOTO 37
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",9)~ THEN BEGIN 58 // from:
  SAY @78
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY @79
  IF ~  PartyHasItem("NWOPHALT")~ THEN REPLY @7 GOTO 6
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY @15 GOTO 60
  IF ~~ THEN REPLY @58 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 60 // from: 59.2
  SAY @80
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(10000)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",2)~ THEN BEGIN 61 // from:
  SAY @81
  IF ~  PartyHasItem("NWOPHALT")~ THEN REPLY @7 GOTO 6
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY @15 GOTO 62
  IF ~~ THEN REPLY @58 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 62 // from: 61.2
  SAY @82
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(30000)~ EXIT
END

