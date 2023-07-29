// Чернозерье Голая Доска Турин человек  Вымуштрованный капитан городской стражи. Он выглядит спокойным, поскольку баррикады Чернозерья свели чуму к минимуму, и оставили его обязанности практически неизменными. Turin

BEGIN ~THURIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("ThurinQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("KnowThurin","LOCALS",0)~ THEN REPLY @1 DO ~SetGlobal("KnowThurin","LOCALS",1)~ GOTO 1
  IF ~  Global("KnowThurin","LOCALS",0)~ THEN REPLY @2 DO ~SetGlobal("KnowThurin","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1,2
  SAY @5
  IF ~  IsGabber(Player1)~ THEN REPLY @6 GOTO 4
  IF ~  IsGabber(Player1)~ THEN REPLY @7 GOTO 5
  IF ~  !IsGabber(Player1)~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @10
  IF ~  Global("KnowThurin","LOCALS",0)~ THEN REPLY @11 DO ~SetGlobal("KnowThurin","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @17
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @18
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @19
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY @20
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY @21
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY @29
  IF ~  Global("KnowThurin","LOCALS",0)~ THEN REPLY @11 DO ~SetGlobal("KnowThurin","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 2.4
  SAY @30
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @34
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY @35
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY @36
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY @37
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 21
  IF ~~ THEN REPLY @40 GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY @41
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 12.2
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY @45
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @89667 EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY @47
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @89667 EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.1
  SAY @48
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY @49
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 3
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("ThurinQuest","GLOBAL",1)~ THEN BEGIN 25 // from:
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 26
  IF ~  Dead("Samuel2")CheckStatGT(LastTalkedToBy(Myself),13,CHR)!Alignment(Player1,MASK_EVIL)~ THEN REPLY @52 GOTO 27
  IF ~  Dead("Samuel2")OR(2)CheckStatLT(LastTalkedToBy(Myself),14,CHR)Alignment(Player1,MASK_EVIL)~ THEN REPLY @52 GOTO 28
  IF ~  Dead("Samuel2")CheckStatGT(LastTalkedToBy(Myself),13,CHR)!Alignment(Player1,MASK_EVIL)~ THEN REPLY @53 GOTO 27
  IF ~  Dead("Samuel2")OR(2)CheckStatLT(LastTalkedToBy(Myself),14,CHR)Alignment(Player1,MASK_EVIL)~ THEN REPLY @53 GOTO 28
  IF ~~ THEN REPLY @54 GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 25.1 25.3
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.2 25.4
  SAY @56
  IF ~  !Dead("Meldanen")~ THEN GOTO 30
  IF ~  Dead("Meldanen")~ THEN GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 25.3 25.5
  SAY @57
  IF ~  !Dead("Meldanen")~ THEN GOTO 30
  IF ~  Dead("Meldanen")~ THEN GOTO 32
END

IF ~~ THEN BEGIN 29 // 25.6
  SAY @58
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY @59
  IF ~~ THEN DO ~EraseJournalEntry(@89667)EraseJournalEntry(@89700)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY @60
  IF ~~ THEN DO ~EraseJournalEntry(@89667)EraseJournalEntry(@89700)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 28.2
  SAY @61
  IF ~~ THEN DO ~EraseJournalEntry(@89667)EraseJournalEntry(@89700)EscapeArea()~ EXIT
END

// --------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("ThurinQuest","GLOBAL",2)Global("ThurinQuest","GLOBAL",3)~ THEN BEGIN 33 // from:
  SAY @62
  IF ~  Global("ThurinQuest","GLOBAL",2)~ THEN GOTO 34
  IF ~  Global("ThurinQuest","GLOBAL",3)~ THEN GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @63
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @64 GOTO 36
  IF ~CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @64 GOTO 37
  IF ~~ THEN REPLY @65 GOTO 38
  IF ~~ THEN REPLY @66 GOTO 39
  IF ~~ THEN REPLY @67 GOTO 40
END

IF ~~ THEN BEGIN 35 // from: 33.2
  SAY @68
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @64 GOTO 36
  IF ~CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @64 GOTO 37
  IF ~~ THEN REPLY @65 GOTO 38
  IF ~~ THEN REPLY @66 GOTO 39
  IF ~~ THEN REPLY @67 GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY @69
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",4)GiveGoldForce(975)AddexperienceParty(90000)EraseJournalEntry(@89667)EraseJournalEntry(@89700)~ SOLVED_JOURNAL @89812 EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.2
  SAY @71
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",4)GiveGoldForce(800)AddexperienceParty(90000)EraseJournalEntry(@89667)EraseJournalEntry(@89700)~ SOLVED_JOURNAL @89812 EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.3
  SAY @72
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",4)GiveGoldForce(800)AddexperienceParty(50000)EraseJournalEntry(@89667)EraseJournalEntry(@89700)~ SOLVED_JOURNAL @89812 EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.4
  SAY @73
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",4)GiveGoldForce(800)AddexperienceParty(90000)EraseJournalEntry(@89667)EraseJournalEntry(@89700)~ SOLVED_JOURNAL @89812 EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.5
  SAY @74
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",4)ReputationInc(1)AddexperienceParty(100000)EraseJournalEntry(@89667)EraseJournalEntry(@89700)~ SOLVED_JOURNAL @89812 EXIT
END

// ----------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("ThurinQuest","GLOBAL",3)~ THEN BEGIN 41 // from:
  SAY @75
  IF ~~ THEN EXIT
END

