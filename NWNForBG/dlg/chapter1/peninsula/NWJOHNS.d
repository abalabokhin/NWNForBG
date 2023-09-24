// Полуостров Мастер Джонс   Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.

BEGIN ~NWJOHNS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JohnsthDead","MYAREA",1)Global("Follow","LOCALS",0)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
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
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN DO ~GiveGoldForce(92)IncrementGlobal("EvilNW1","GLOBAL",1)EscapeAreaDestroy(50)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN DO ~SetGlobal("Follow","LOCALS",1)SetGlobal("JohnsthDead","MYAREA",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN DO ~EscapeAreaDestroy(50)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @20
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",1)~ THEN BEGIN 11 // from:
  SAY @21
  IF ~~ THEN REPLY @22 DO ~SetGlobal("Pause","LOCALS",0)~ EXIT
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY @24
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",2)~ THEN BEGIN 13 // from:
  SAY @25
  IF ~~ THEN DO ~SetGlobal("JohnsQuest","MYAREA",1)SetGlobal("Follow","LOCALS",3)AddexperienceParty(12000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",3)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY @26
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("SedosQuest","GLOBAL",2)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY @27
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JohnsthDead","MYAREA",0)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY @28
  IF ~~ THEN EXIT
END

