// ������, ����� ������ - �����. 

BEGIN ~NWBELIAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player1IsSummoner","MYAREA",1)CheckStatGT(Player1,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @6
  IF ~~ THEN DO ~CreateVisualEffectObject("SPCLOUD1",Myself)GiveItemCreate("NWBLUNIT",LastTalkedToBy,1,0,0)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @16
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @17
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 4.4
  SAY @18
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 4.5
  SAY @19
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 5.1 6.1 7.1 8.1 9.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 5.2 6.2 7.2 8.2 9.2
  SAY @25
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1
  SAY @26
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.2
  SAY @27
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 10.3 11.3
  SAY @28
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY @29
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY @29
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @30
  IF ~~ THEN DO ~CreateVisualEffectObject("SPCLOUD1",Myself)GiveItemCreate("NWBELIAT",Player1,1,0,0)EraseJournalEntry(@97801)DestroySelf()~ UNSOLVED_JOURNAL @97833 EXIT
END

// ----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player1IsSummoner","MYAREA",1)!CheckStatGT(Player1,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 18 // from:
  SAY @32
  IF ~~ THEN DO ~Enemy()EraseJournalEntry(@97801)~ UNSOLVED_JOURNAL @97835 EXIT
END

// ----------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 19 // from:
  SAY @34
  IF ~~ THEN EXTERN ~NWGUARDN~ 53
END

IF ~~ THEN BEGIN 20 // from: NWGUARDN 53
  SAY @35
  IF ~~ THEN EXTERN ~NWGUARDN~ 54
END

IF ~~ THEN BEGIN 21 // from: NWGUARDN 54.1
  SAY @36
  IF ~~ THEN EXTERN ~NWGUARDN~ 55
END

IF ~~ THEN BEGIN 22 // from: NWGUARDN 54.2
  SAY @37
  IF ~~ THEN EXTERN ~NWGUARDN~ 56
END

IF ~~ THEN BEGIN 23 // from: NWGUARDN 65
  SAY @38
  IF ~~ THEN EXTERN ~NWGUARDN~ 67
END

IF ~~ THEN BEGIN 24 // from: NWGUARDN 71
  SAY @38
  IF ~~ THEN EXTERN ~NWGUARDN~ 72
END

IF ~~ THEN BEGIN 25 // from: NWGUARDN 81
  SAY @38
  IF ~~ THEN EXTERN ~NWGUARDN~ 82
END

IF ~~ THEN BEGIN 26 // from: NWGUARDN 51
  SAY @38
  IF ~~ THEN EXTERN ~NWGUARDN~ 52
END

// ----------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player2IsSummoner","MYAREA",1)CheckStatGT(Player2,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

// ----------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player2IsSummoner","MYAREA",1)!CheckStatGT(Player2,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 18 // from:
  SAY @32
  IF ~~ THEN DO ~Enemy()EraseJournalEntry(@97801)~ UNSOLVED_JOURNAL @97835 EXIT
END

// ----------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player3IsSummoner","MYAREA",1)CheckStatGT(Player3,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

// ----------------------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player3IsSummoner","MYAREA",1)!CheckStatGT(Player3,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 18 // from:
  SAY @32
  IF ~~ THEN DO ~Enemy()EraseJournalEntry(@97801)~ UNSOLVED_JOURNAL @97835 EXIT
END

// ----------------------------------------------------

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player4IsSummoner","MYAREA",1)CheckStatGT(Player4,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

// ----------------------------------------------------

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player4IsSummoner","MYAREA",1)!CheckStatGT(Player4,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 18 // from:
  SAY @32
  IF ~~ THEN DO ~Enemy()EraseJournalEntry(@97801)~ UNSOLVED_JOURNAL @97835 EXIT
END

// ----------------------------------------------------

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player5IsSummoner","MYAREA",1)CheckStatGT(Player5,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

// ----------------------------------------------------

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player5IsSummoner","MYAREA",1)!CheckStatGT(Player5,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 18 // from:
  SAY @32
  IF ~~ THEN DO ~Enemy()EraseJournalEntry(@97801)~ UNSOLVED_JOURNAL @97835 EXIT
END

// ----------------------------------------------------

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player6IsSummoner","MYAREA",1)CheckStatGT(Player6,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

// ----------------------------------------------------

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~Global("Player6IsSummoner","MYAREA",1)!CheckStatGT(Player6,0,PROTECTION_FROM_EVIL)GlobalLT("NWJaregQuest","GLOBAL",4)~ THEN BEGIN 18 // from:
  SAY @32
  IF ~~ THEN DO ~Enemy()EraseJournalEntry(@97801)~ UNSOLVED_JOURNAL @97835 EXIT
END


