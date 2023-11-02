// Центр Невервинтера Ниатар друид  Этот эльф внимательно смотрит на вас в ответ. Он странно смотрится в городе, поскольку его одежда и манеры выдают глубокую связь с дикой природой.

BEGIN ~NWNYATAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWNyatarQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 2
  IF ~  IsGabber(Player1)~ THEN REPLY @3 GOTO 2
  IF ~  !IsGabber(Player1)~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3 0.4
  SAY @10
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12
  IF ~  Class(LastTalkedToBy(Myself),DRUID_ALL)~ THEN GOTO 6
  IF ~  Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN GOTO 7
  IF ~  !Class(LastTalkedToBy(Myself),DRUID_ALL)!Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @18
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @19
  IF ~  OR(2)CheckStatGT(LastTalkedToBy(Myself),15,WIS)CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @20 GOTO 12
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,WIS)CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @21
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @25 GOTO 16
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @26 GOTO 17
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @27 GOTO 18
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @28 GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @29
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @25 GOTO 16
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @26 GOTO 17
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @27 GOTO 18
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @28 GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @30
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 5
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY @33
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @25 GOTO 16
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @26 GOTO 17
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @27 GOTO 18
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @28 GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 11.2
  SAY @34
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @25 GOTO 16
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @26 GOTO 17
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @27 GOTO 18
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @28 GOTO 19
  IF ~  GlobalGT("NWNyatarQuest","GLOBAL",1)~ THEN GOTO 28
END

IF ~~ THEN BEGIN 16 // from: 11.3
  SAY @35
  IF ~  OR(2)Class(LastTalkedToBy(Myself),DRUID_ALL)Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN GOTO 20
  IF ~  !Class(LastTalkedToBy(Myself),DRUID_ALL)!Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY @36
  IF ~~ THEN DO ~SetGlobal("NWNyatarQuest","GLOBAL",2)GiveItemCreate("NWNYATKY",LastTalkedToBy,1,0,0)GiveItemCreate("NWNYATSL",LastTalkedToBy,1,0,0)~ UNSOLVED_JOURNAL @92603 EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.2
  SAY @38
  IF ~~ THEN DO ~SetGlobal("NWNyatarQuest","GLOBAL",2)GiveItemCreate("NWNYATKY",LastTalkedToBy,1,0,0)GiveItemCreate("NWNYATSL",LastTalkedToBy,1,0,0)
GiveItemCreate("NWNYATAL",LastTalkedToBy,1,0,0)~ UNSOLVED_JOURNAL @92604 EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.4
  SAY @40
  IF ~  OR(2)Class(LastTalkedToBy(Myself),DRUID_ALL)Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN GOTO 22
  IF ~  !Class(LastTalkedToBy(Myself),DRUID_ALL)!Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 17.1
  SAY @36
  IF ~~ THEN DO ~SetGlobal("NWNyatarQuest","GLOBAL",1)GiveItemCreate("NWNYATKY",LastTalkedToBy,1,0,0)GiveItemCreate("NWNYATSL",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY @38
  IF ~~ THEN DO ~SetGlobal("NWNyatarQuest","GLOBAL",1)GiveItemCreate("NWNYATKY",LastTalkedToBy,1,0,0)GiveItemCreate("NWNYATSL",LastTalkedToBy,1,0,0)
GiveItemCreate("NWNYATAL",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.4
  SAY @41
  IF ~~ THEN DO ~SetGlobal("NWNyatarQuest","GLOBAL",2)~ UNSOLVED_JOURNAL @92603 EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.5
  SAY @42
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("NWNyatarQuest","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 24 // from:
  SAY @43
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @44 GOTO 4
  IF ~  GlobalGT("NWAnimalsRescued","GLOBAL",0)GlobalLT("NWNyatarQuest","GLOBAL",3)~ THEN REPLY @45 GOTO 25
  IF ~  GlobalGT("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @46 GOTO 26
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 26 // from: 24.3
  SAY @47
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @22
  IF ~  GlobalLT("NWNyatarQuest","GLOBAL",2)~ THEN REPLY @23 GOTO 14
  IF ~  GlobalLT("NWNyatarQuest","GLOBAL",2)~ THEN REPLY @24 GOTO 15
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @25 GOTO 16
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @26 GOTO 17
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @27 GOTO 18
  IF ~  Global("NWNyatarQuest","GLOBAL",1)~ THEN REPLY @28 GOTO 19
  IF ~  GlobalGT("NWNyatarQuest","GLOBAL",1)~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 26.7
  SAY @48
  IF ~  GlobalGT("NWAnimalsRescued","GLOBAL",0)GlobalLT("NWNyatarQuest","GLOBAL",3)~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 25 // from: 24.2
  SAY @49
  IF ~  Global("NWAnimalsRescued","GLOBAL",5)GlobalGT("NWAnimalsDead","GLOBAL",0)~ THEN GOTO 29
  IF ~  Global("NWAnimalsRescued","GLOBAL",5)Global("NWAnimalsDead","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalLT("NWAnimalsRescued","GLOBAL",5)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 25.1
  SAY @50
  IF ~  Global("NWAnimalsDead","GLOBAL",5)~ THEN GOTO 32
  IF ~  GlobalLT("NWAnimalsDead","GLOBAL",5)!Global("NWAnimalsDead","GLOBAL",1)~ THEN GOTO 33
  IF ~  Global("NWAnimalsDead","GLOBAL",1)~ THEN GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 25.2
  SAY @51
  IF ~~ THEN DO ~SetGlobal("NWNyatarQuest","GLOBAL",3)AddexperienceParty(120000)GiveItem("NWNYATPZ",LastTalkedToBy)EraseJournalEntry(@92603)EraseJournalEntry(@92604)~ SOLVED_JOURNAL @92651 EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.3
  SAY @53
  IF ~  GlobalGT("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @46 GOTO 26
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 32 // from: 29.1
  SAY @54
  IF ~~ THEN DO ~SetGlobal("NWNyatarQuest","GLOBAL",9)EraseJournalEntry(@92603)EraseJournalEntry(@92604)~ SOLVED_JOURNAL @92654 EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.2
  SAY @56
  IF ~~ THEN DO ~SetGlobal("NWNyatarQuest","GLOBAL",3)AddexperienceParty(80000)GiveGoldForce(900)EraseJournalEntry(@92603)EraseJournalEntry(@92604)~ SOLVED_JOURNAL @92656 EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.2
  SAY @58
  IF ~~ THEN DO ~SetGlobal("NWNyatarQuest","GLOBAL",3)AddexperienceParty(100000)GiveItem("NWNYATPZ",LastTalkedToBy)EraseJournalEntry(@92603)EraseJournalEntry(@92604)~ SOLVED_JOURNAL @92656 EXIT
END

// ---------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("NWNyatarQuest","GLOBAL",3)!IsGabber(Player1)~ THEN BEGIN 38 // from:
  SAY @59
  IF ~  Global("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @44 GOTO 4
  IF ~  GlobalGT("NWAnimalsRescued","GLOBAL",0)GlobalLT("NWNyatarQuest","GLOBAL",3)~ THEN REPLY @45 GOTO 25
  IF ~  GlobalGT("NWNyatarQuest","GLOBAL",0)~ THEN REPLY @46 GOTO 26
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

// ---------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNyatarQuest","GLOBAL",3)Global("NWN1Quest","GLOBAL",0)~ THEN BEGIN 35 // from:
  SAY @60
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

// ---------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNyatarQuest","GLOBAL",3)GlobalGT("NWN1Quest","GLOBAL",0)~ THEN BEGIN 36 // from:
  SAY @61
  IF ~~ THEN REPLY @9 DO ~StartStore("NWNYATAR",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

// ---------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNyatarQuest","GLOBAL",9)~ THEN BEGIN 37 // from:
  SAY @62
  IF ~~ THEN EXIT
END

